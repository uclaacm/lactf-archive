use std::{
    fs::{self, File},
    io::BufReader,
};

use bytemuck::{Pod, Zeroable};
use glam::{Vec2, Vec3};
use obj::{Obj, TexturedVertex};
use spirv_builder::{MetadataPrintout, SpirvBuilder, SpirvMetadata};

fn main() -> Result<(), Box<dyn std::error::Error>> {
    // compile shaders
    SpirvBuilder::new("shaders", "spirv-unknown-vulkan1.2")
        .capability(spirv_builder::Capability::Int8)
        .spirv_metadata(SpirvMetadata::NameVariables)
        .print_metadata(MetadataPrintout::Full)
        .build()?;

    // "compile" the pbr model
    #[repr(C)]
    #[derive(Clone, Copy, Debug, Default, Zeroable, Pod)]
    struct PBRVertex {
        position: Vec3,
        normal: Vec3,
        uv: Vec2,
    }

    const PBR_OBJ_PATH: &str = "pbr.obj";
    println!("cargo:rerun-if-changed={}", PBR_OBJ_PATH);

    let mesh: Obj<TexturedVertex, u16> = obj::load_obj(BufReader::new(File::open(PBR_OBJ_PATH)?))?;

    let mut vertices = vec![];

    for vertex in mesh.vertices {
        vertices.push(PBRVertex {
            position: Vec3::from_array(vertex.position),
            normal: Vec3::from_array(vertex.normal),
            uv: Vec2::from_slice(&vertex.texture),
        })
    }

    let vertices = bytemuck::cast_slice::<_, u8>(&vertices);
    let indices = bytemuck::cast_slice::<_, u8>(&mesh.indices);

    fs::write("target/pbr.obj.vertices", vertices)?;
    fs::write("target/pbr.obj.indices", indices)?;

    Ok(())
}
