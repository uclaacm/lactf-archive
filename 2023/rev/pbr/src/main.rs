#![feature(const_for)]
#![feature(const_maybe_uninit_zeroed)]
#![feature(const_mut_refs)]
#![feature(const_size_of_val)]
#![feature(decl_macro)]

use bytemuck::{Pod, Zeroable};
use glam::{vec2, vec3, Mat4, Vec2, Vec3};
use std::{f32, sync::Arc, time::Instant};
use vulkano::{
    buffer::{Buffer, BufferAllocateInfo, BufferUsage},
    command_buffer::{
        allocator::StandardCommandBufferAllocator, AutoCommandBufferBuilder, CommandBufferUsage,
        RenderPassBeginInfo, SubpassContents,
    },
    descriptor_set::{
        allocator::StandardDescriptorSetAllocator, PersistentDescriptorSet, WriteDescriptorSet,
    },
    device::{
        physical::PhysicalDeviceType, Device, DeviceCreateInfo, DeviceExtensions, Features,
        QueueCreateInfo, QueueFlags,
    },
    format::{ClearValue, Format},
    image::{view::ImageView, AttachmentImage, ImageAccess, ImageUsage, SwapchainImage},
    instance::{Instance, InstanceCreateInfo},
    memory::allocator::{MemoryUsage, StandardMemoryAllocator},
    pipeline::{
        graphics::{
            depth_stencil::DepthStencilState,
            input_assembly::InputAssemblyState,
            rasterization::{CullMode, FrontFace, RasterizationState},
            vertex_input::Vertex,
            viewport::{Scissor, Viewport, ViewportState},
        },
        GraphicsPipeline, Pipeline, PipelineBindPoint, StateMode,
    },
    render_pass::{Framebuffer, FramebufferCreateInfo, RenderPass, Subpass},
    swapchain::{
        acquire_next_image, AcquireError, Swapchain, SwapchainCreateInfo, SwapchainCreationError,
        SwapchainPresentInfo,
    },
    sync::{self, FlushError, GpuFuture},
    VulkanLibrary,
};
use vulkano_win::VkSurfaceBuild;
use winit::{
    event::{Event, KeyboardInput, WindowEvent, VirtualKeyCode, ElementState},
    event_loop::{ControlFlow, EventLoop},
    window::{Window, WindowBuilder},
};

mod aes;

#[repr(C)]
#[derive(Clone, Copy, Debug, Default, Zeroable, Pod, Vertex)]
struct BasicVertex {
    #[format(R32G32B32_SFLOAT)]
    position: Vec3,
}

impl BasicVertex {
    pub fn new(x: f32, y: f32, z: f32) -> Self {
        Self {
            position: vec3(x, y, z),
        }
    }
}

#[repr(C)]
#[derive(Clone, Copy, Debug, Default, Zeroable, Pod, Vertex)]
struct PBRVertex {
    #[format(R32G32B32_SFLOAT)]
    position: Vec3,
    #[format(R32G32B32_SFLOAT)]
    normal: Vec3,
    #[format(R32G32_SFLOAT)]
    uv: Vec2,
}

#[repr(C)]
#[derive(Clone, Copy, Debug, Default, Zeroable, Pod)]
pub struct PBRPushConstant {
    vp: Mat4,
    res: Vec2,
    time: f32,
    _padding: u32,
}

#[repr(C)]
struct Aligned<A, T: ?Sized> {
    pub _align: [A; 0],
    pub t: T,
}

/// To minimize unnecessary reversing we const-include all of the assets
/// used in this challenge in the binary in the same format as in memory.
macro include_from_bytes($p:literal as $t:ty) {
    unsafe {
        // can't use bytemuck because their cast function is not const :(
        let bytes: Aligned<$t, _> = Aligned {
            _align: [],
            t: *include_bytes!(concat!("../", $p)),
        };

        ["size_of_value(bytes) % size_of::<T>() == 0"]
            [::core::mem::size_of_val(&bytes.t) % ::core::mem::size_of::<$t>()];
        const SIZE: usize = ::core::mem::size_of_val(include_bytes!(concat!("../", $p)))
            / ::core::mem::size_of::<$t>();

        let casted = ::core::slice::from_raw_parts(bytes.t.as_ptr() as *const $t, SIZE);
        let mut out: [$t; SIZE] = [::std::mem::MaybeUninit::zeroed().assume_init(); SIZE];

        let mut i = 0;
        while i < SIZE {
            out[i] = casted[i];
            i += 1;
        }

        out
    }
}

const PBR_VERTICES: &[PBRVertex] = &include_from_bytes!("target/pbr.obj.vertices" as PBRVertex);
const PBR_INDICES: &[u16] = &include_from_bytes!("target/pbr.obj.indices" as u16);

#[allow(non_snake_case)]
mod PBR_SHADER {
    vulkano_shaders::shader! {
        ty: "vertex",
        bytes: "target/spirv-builder/spirv-unknown-vulkan1.2/release/deps/lactf2023_pbr_shaders.spv",
        exact_entrypoint_interface: true,
    }
}

fn main() {
    // -----------
    // Init Vulkan
    // -----------
    //
    // This code is based on the Vulkano triangle example (licensed under MIT
    // or Apache 2.0). Notable changes to the hello triangle pipeline include:
    //
    // - setting the mesh buffers to `GpuOnly`
    // - providing a push constant containing a view-projection matrix
    // - adding a depth buffer
    // - adding a uniform buffer

    let mut ops = [0u32; 72];
    let mut ops_index = 0;
    let mut _padding = 0;

    let library = VulkanLibrary::new().unwrap();
    let required_extensions = vulkano_win::required_extensions(&library);

    let instance = Instance::new(
        library,
        InstanceCreateInfo {
            enabled_extensions: required_extensions,
            enumerate_portability: true,
            ..Default::default()
        },
    )
    .unwrap();

    let event_loop = EventLoop::new();
    let surface = WindowBuilder::new()
        .with_title("PBR²™")
        .build_vk_surface(&event_loop, instance.clone())
        .unwrap();
    let device_extensions = DeviceExtensions {
        khr_swapchain: true,
        ..DeviceExtensions::empty()
    };

    let (physical_device, queue_family_index) = instance
        .enumerate_physical_devices()
        .unwrap()
        .filter(|p| p.supported_extensions().contains(&device_extensions))
        .filter_map(|p| {
            p.queue_family_properties()
                .iter()
                .enumerate()
                .position(|(i, q)| {
                    q.queue_flags.intersects(QueueFlags::GRAPHICS)
                        && p.surface_support(i as u32, &surface).unwrap_or(false)
                })
                .map(|i| (p, i as u32))
        })
        .min_by_key(|(p, _)| match p.properties().device_type {
            PhysicalDeviceType::DiscreteGpu => 0,
            PhysicalDeviceType::IntegratedGpu => 1,
            PhysicalDeviceType::VirtualGpu => 2,
            PhysicalDeviceType::Cpu => 3,
            PhysicalDeviceType::Other => 4,
            _ => 5,
        })
        .expect("No suitable physical device found");

    println!(
        "GPU: {} (type: {:?})",
        physical_device.properties().device_name,
        physical_device.properties().device_type,
    );

    let (device, mut queues) = Device::new(
        physical_device,
        DeviceCreateInfo {
            enabled_extensions: device_extensions,
            enabled_features: Features {
                vulkan_memory_model: true,
                shader_int8: true,
                ..Features::empty()
            },
            queue_create_infos: vec![QueueCreateInfo {
                queue_family_index,
                ..Default::default()
            }],

            ..Default::default()
        },
    )
    .unwrap();

    let queue = queues.next().unwrap();
    let (mut swapchain, images) = {
        let surface_capabilities = device
            .physical_device()
            .surface_capabilities(&surface, Default::default())
            .unwrap();

        let image_format = Some(
            device
                .physical_device()
                .surface_formats(&surface, Default::default())
                .unwrap()[0]
                .0,
        );
        let window = surface.object().unwrap().downcast_ref::<Window>().unwrap();

        Swapchain::new(
            device.clone(),
            surface.clone(),
            SwapchainCreateInfo {
                min_image_count: surface_capabilities.min_image_count,
                image_format,
                image_extent: window.inner_size().into(),
                image_usage: ImageUsage::COLOR_ATTACHMENT,
                composite_alpha: surface_capabilities
                    .supported_composite_alpha
                    .into_iter()
                    .next()
                    .unwrap(),

                ..Default::default()
            },
        )
        .unwrap()
    };

    let memory_allocator = StandardMemoryAllocator::new_default(device.clone());
    let descriptor_set_allocator = StandardDescriptorSetAllocator::new(device.clone());

    let sea_vertex_buffer = Buffer::from_data(
        &memory_allocator,
        BufferAllocateInfo {
            buffer_usage: BufferUsage::VERTEX_BUFFER,
            memory_usage: MemoryUsage::Upload,
            ..Default::default()
        },
        [
            BasicVertex::new(-1.0, -1.0, 0.0),
            BasicVertex::new(1.0, -1.0, 0.0),
            BasicVertex::new(1.0, 1.0, 0.0),
            BasicVertex::new(1.0, 1.0, 0.0),
            BasicVertex::new(-1.0, 1.0, 0.0),
            BasicVertex::new(-1.0, -1.0, 0.0),
        ],
    )
    .unwrap();

    let pbr_vertex_buffer = Buffer::from_iter(
        &memory_allocator,
        BufferAllocateInfo {
            buffer_usage: BufferUsage::VERTEX_BUFFER,
            memory_usage: MemoryUsage::Upload,
            ..Default::default()
        },
        PBR_VERTICES.iter().cloned(),
    )
    .unwrap();

    let pbr_index_buffer = Buffer::from_iter(
        &memory_allocator,
        BufferAllocateInfo {
            buffer_usage: BufferUsage::INDEX_BUFFER,
            memory_usage: MemoryUsage::Upload,
            ..Default::default()
        },
        PBR_INDICES.iter().cloned(),
    )
    .unwrap();

    let sbox_buffer = Buffer::from_iter(
        &memory_allocator,
        BufferAllocateInfo {
            buffer_usage: BufferUsage::UNIFORM_BUFFER,
            memory_usage: MemoryUsage::Upload,
            ..Default::default()
        },
        aes::SBOX.iter().cloned(),
    )
    .unwrap();

    let render_pass = vulkano::ordered_passes_renderpass!(
        device.clone(),
        attachments: {
            color: {
                load: Clear,
                store: Store,
                format: swapchain.image_format(),
                samples: 1,
            },
            depth: {
                load: Clear,
                store: DontCare,
                format: Format::D32_SFLOAT,
                samples: 1,
            }
        },
        passes: [
            {
                // pass 1: sea
                color: [color],
                depth_stencil: {},
                input: [],
                resolve: [],
            },
            {
                // pass 2: brdf
                color: [color],
                depth_stencil: {depth},
                input: [],
                resolve: [],
            }
        ]
    )
    .unwrap();

    let shader = PBR_SHADER::load(device.clone()).unwrap();

    // pass 1: sea
    let sea_pipeline = GraphicsPipeline::start()
        .render_pass(Subpass::from(render_pass.clone(), 0).unwrap())
        .rasterization_state(RasterizationState {
            cull_mode: StateMode::Fixed(CullMode::Back),
            front_face: StateMode::Fixed(FrontFace::Clockwise),
            ..RasterizationState::default()
        })
        .input_assembly_state(InputAssemblyState::new())
        .viewport_state(ViewportState::viewport_dynamic_scissor_dynamic(1))
        .vertex_input_state(BasicVertex::per_vertex())
        .vertex_shader(shader.entry_point("sea_vert").unwrap(), ())
        .fragment_shader(shader.entry_point("sea_frag").unwrap(), ())
        .build(device.clone())
        .unwrap();

    // pass 2: brdf
    let pbr_pipeline = GraphicsPipeline::start()
        .render_pass(Subpass::from(render_pass.clone(), 1).unwrap())
        .rasterization_state(RasterizationState {
            cull_mode: StateMode::Fixed(CullMode::Back),
            front_face: StateMode::Fixed(FrontFace::Clockwise),
            ..RasterizationState::default()
        })
        .depth_stencil_state(DepthStencilState::simple_depth_test())
        .input_assembly_state(InputAssemblyState::new())
        .viewport_state(ViewportState::viewport_dynamic_scissor_dynamic(1))
        .vertex_input_state(PBRVertex::per_vertex())
        .vertex_shader(shader.entry_point("pbr_vert").unwrap(), ())
        .fragment_shader(shader.entry_point("pbr_frag").unwrap(), ())
        // finish building pipeline
        .build(device.clone())
        .unwrap();

    let pbr_layout = pbr_pipeline.layout().set_layouts().get(0).unwrap();
    let pbr_set = PersistentDescriptorSet::new(
        &descriptor_set_allocator,
        pbr_layout.clone(),
        [WriteDescriptorSet::buffer(0, sbox_buffer)],
    )
    .unwrap();

    let mut viewport = Viewport {
        origin: [0.0, 0.0],
        dimensions: [0.0, 0.0],
        depth_range: 0.0..1.0,
    };
    let mut scissor = Scissor {
        origin: [0, 0],
        ..Scissor::default()
    };

    let mut framebuffers = window_size_dependent_setup(
        &memory_allocator,
        &images,
        render_pass.clone(),
        &mut viewport,
        &mut scissor,
        true,
    );

    let command_buffer_allocator =
        StandardCommandBufferAllocator::new(device.clone(), Default::default());

    let mut recreate_swapchain = false;
    let mut previous_frame_end = Some(sync::now(device.clone()).boxed());

    let time = Instant::now();

    event_loop.run(move |event, _, control_flow| match event {
        Event::WindowEvent {
            event: WindowEvent::CloseRequested,
            ..
        } => {
            *control_flow = ControlFlow::Exit;
        }
        Event::WindowEvent {
            event:
                WindowEvent::KeyboardInput {
                    input:
                        KeyboardInput {
                            state,
                            virtual_keycode: Some(key),
                            ..
                        },
                    ..
                },
            ..
        } => {
            if state == ElementState::Released && key == VirtualKeyCode::Space {
                let window = surface.object().unwrap().downcast_ref::<Window>().unwrap();
                let dimensions = window.inner_size();
                ops[ops_index] = dimensions.width;
                if ops_index == ops.len() - 1 {
                    _padding = dimensions.height % 3;
                    // eprintln!("hrm? {}", dimensions.height);
                }
                ops_index = (ops_index + 1) % ops.len();
                // eprintln!("hmm? {}", dimensions.width);
            }
        }
        Event::WindowEvent {
            event: WindowEvent::Resized(_) | WindowEvent::Moved(_),
            ..
        } => {
            recreate_swapchain = true;
        }
        Event::RedrawEventsCleared => {
            let window = surface.object().unwrap().downcast_ref::<Window>().unwrap();
            let dimensions = window.inner_size();
            if dimensions.width == 0 || dimensions.height == 0 {
                return;
            }

            let proj = Mat4::perspective_rh_gl(
                f32::consts::PI / 2.0,
                dimensions.width as f32 / dimensions.height as f32,
                0.01,
                1000.0,
            );
            let view = Mat4::from_translation(vec3(0.025, 0.0, -0.75));

            previous_frame_end.as_mut().unwrap().cleanup_finished();

            if recreate_swapchain {
                let (new_swapchain, new_images) = match swapchain.recreate(SwapchainCreateInfo {
                    image_extent: dimensions.into(),
                    ..swapchain.create_info()
                }) {
                    Ok(r) => r,
                    Err(SwapchainCreationError::ImageExtentNotSupported { .. }) => return,
                    Err(e) => panic!("Failed to recreate swapchain: {e:?}"),
                };

                swapchain = new_swapchain;
                framebuffers = window_size_dependent_setup(
                    &memory_allocator,
                    &new_images,
                    render_pass.clone(),
                    &mut viewport,
                    &mut scissor,
                    window
                        .outer_position()
                        .map(|x| x.x != 69 || x.y != 69)
                        .unwrap_or(true),
                );
                recreate_swapchain = false;
            }

            let (image_index, suboptimal, acquire_future) =
                match acquire_next_image(swapchain.clone(), None) {
                    Ok(r) => r,
                    Err(AcquireError::OutOfDate) => {
                        recreate_swapchain = true;
                        return;
                    }
                    Err(e) => panic!("Failed to acquire next image: {e:?}"),
                };

            if suboptimal {
                recreate_swapchain = true;
            }

            let mut builder = AutoCommandBufferBuilder::primary(
                &command_buffer_allocator,
                queue.queue_family_index(),
                CommandBufferUsage::OneTimeSubmit,
            )
            .unwrap();

            let push = PBRPushConstant {
                vp: proj * view,
                res: vec2(dimensions.width as f32, dimensions.height as f32),
                time: (Instant::now() - time).as_secs_f32().max(0.0),
                _padding,
            };

            let ops_buffer = Buffer::from_iter(
                &memory_allocator,
                BufferAllocateInfo {
                    buffer_usage: BufferUsage::UNIFORM_BUFFER,
                    memory_usage: MemoryUsage::Upload,
                    ..Default::default()
                },
                ops.iter().cloned(),
            )
            .unwrap();

            let sea_layout = sea_pipeline.layout().set_layouts().get(0).unwrap();
            let sea_set = PersistentDescriptorSet::new(
                &descriptor_set_allocator,
                sea_layout.clone(),
                [WriteDescriptorSet::buffer(0, ops_buffer)],
            )
            .unwrap();

            builder
                .begin_render_pass(
                    RenderPassBeginInfo {
                        clear_values: vec![Some([0.0; 4].into()), Some(ClearValue::Depth(1.0))],
                        ..RenderPassBeginInfo::framebuffer(
                            framebuffers[image_index as usize].clone(),
                        )
                    },
                    SubpassContents::Inline,
                )
                .unwrap()
                .set_viewport(0, [viewport.clone()])
                .set_scissor(0, [scissor.clone()])
                .bind_pipeline_graphics(sea_pipeline.clone())
                .push_constants(sea_pipeline.layout().clone(), 0, push)
                .bind_descriptor_sets(
                    PipelineBindPoint::Graphics,
                    sea_pipeline.layout().clone(),
                    0,
                    sea_set.clone(),
                )
                .bind_vertex_buffers(0, sea_vertex_buffer.clone())
                .draw(6, 1, 0, 0)
                .unwrap()
                .next_subpass(SubpassContents::Inline)
                .unwrap()
                .bind_pipeline_graphics(pbr_pipeline.clone())
                .push_constants(pbr_pipeline.layout().clone(), 0, push)
                .bind_descriptor_sets(
                    PipelineBindPoint::Graphics,
                    pbr_pipeline.layout().clone(),
                    0,
                    pbr_set.clone(),
                )
                .bind_vertex_buffers(0, pbr_vertex_buffer.clone())
                .bind_index_buffer(pbr_index_buffer.clone())
                .draw_indexed(pbr_index_buffer.len() as u32, 1, 0, 0, 0)
                .unwrap()
                .end_render_pass()
                .unwrap();

            let command_buffer = builder.build().unwrap();

            let future = previous_frame_end
                .take()
                .unwrap()
                .join(acquire_future)
                .then_execute(queue.clone(), command_buffer)
                .unwrap()
                .then_swapchain_present(
                    queue.clone(),
                    SwapchainPresentInfo::swapchain_image_index(swapchain.clone(), image_index),
                )
                .then_signal_fence_and_flush();

            match future {
                Ok(future) => {
                    previous_frame_end = Some(future.boxed());
                }
                Err(FlushError::OutOfDate) => {
                    recreate_swapchain = true;
                    previous_frame_end = Some(sync::now(device.clone()).boxed());
                }
                Err(_) => {
                    println!("Warning: failed to flush future, skipping frame");
                    previous_frame_end = Some(sync::now(device.clone()).boxed());
                }
            }
        }
        _ => (),
    });
}

fn window_size_dependent_setup(
    allocator: &StandardMemoryAllocator,
    images: &[Arc<SwapchainImage>],
    render_pass: Arc<RenderPass>,
    viewport: &mut Viewport,
    scissor: &mut Scissor,
    hide: bool,
) -> Vec<Arc<Framebuffer>> {
    let dimensions = images[0].dimensions().width_height();
    viewport.dimensions = [dimensions[0] as f32, dimensions[1] as f32];
    scissor.dimensions = [dimensions[0], dimensions[1] - 1 * (hide as u32)];

    images
        .iter()
        .map(|image| {
            let view = ImageView::new_default(image.clone()).unwrap();
            let depth = ImageView::new_default(
                AttachmentImage::input_attachment(allocator, dimensions, Format::D32_SFLOAT)
                    .unwrap(),
            )
            .unwrap();
            Framebuffer::new(
                render_pass.clone(),
                FramebufferCreateInfo {
                    attachments: vec![view, depth],
                    ..Default::default()
                },
            )
            .unwrap()
        })
        .collect::<Vec<_>>()
}
