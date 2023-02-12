//! # PBR^2 Shaders
//!
//! ## Credits
//!
//! The core BRDF shader is stolen from an unfinished game I wrote two years
//! earlier, which itself replicates the algorithms from
//! [Filament](https://google.github.io/filament/Filament.md.html#listing_glslbrdf).
//!
//! The seascape shader is based off of the
//! ["Seascape"](https://www.shadertoy.com/view/Ms2SD1) shader by TDM.

#![no_std]

use core::ops::{Deref, DerefMut};

use brdf::SimpleMaterial;
use spirv_std::glam::{vec3, IVec4, Mat4, Vec2, Vec3, Vec4, Vec4Swizzles};
use spirv_std::spirv;

mod brdf;
mod sea;
mod util;
mod vm;

// scene constants because I'm too lazy to uniform buffer these

const CAMERA: Vec3 = Vec3::ZERO;

const SUN: Vec3 = vec3(3.0 / 14.0, 1.0 / 14.0, -2.0 / 14.0);
const AMBIENT: Vec3 = vec3(0.0, 3.0, -2.0);

const GOLD: SimpleMaterial = SimpleMaterial {
    color: vec3(211.0 / 255.0, 143.0 / 255.0, 56.0 / 255.0),
    metallic: 1.0,
    roughness: 0.4,
    reflectance: 0.0,
    emission: 0.0,
};

#[repr(C)]
pub struct PBRPushConstantInner {
    vp: Mat4,
    res: Vec2,
    time: f32,
    _padding: f32,
}

#[repr(C)]
pub struct PBRPushConstant {
    inner: PBRPushConstantInner,
}

impl Deref for PBRPushConstant {
    type Target = PBRPushConstantInner;

    fn deref(&self) -> &Self::Target {
        &self.inner
    }
}

impl DerefMut for PBRPushConstant {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.inner
    }
}

// -- pass 1: water go brr --

#[spirv(vertex)]
pub fn sea_vert(position: Vec3, #[spirv(position)] out: &mut Vec4) {
    *out = position.extend(1.0);
}

#[spirv(fragment)]
pub fn sea_frag(
    #[spirv(push_constant)] push: &PBRPushConstant,
    #[spirv(uniform, descriptor_set = 0, binding = 0)] sbox: &[IVec4; 18],
    #[spirv(frag_coord)] coord: Vec4,
    out: &mut Vec4,
) {
    *out = 'out: {
        if coord.y < push.res.y - 1.0 || coord.x > 16.0 {
            sea::render_sea_with_aa(coord.xy(), push.time, push.res).extend(1.0)
        } else {
            let input = match push._padding as u32 {
                0 => vm::INPUT_1,
                1 => vm::INPUT_2,
                2 => vm::INPUT_3,
                _ => break 'out Vec3::ONE.extend(1.0),
            };

            let mut ops = [0; 69];
            let mut i = 0;
            let mut j = 0;
            while j < sbox.len() {
                let s = sbox[j];
                ops[i] = s.x as u32;
                ops[i] = s.y as u32;
                ops[i] = s.z as u32;
                ops[i] = s.w as u32;
                i += 4;
                j += 1;
            }
            
            let out = vm::calc(input, ops, push._padding as u32);
            match out.0 {
                true => Vec3::splat(out.1.to_cols_array()[coord.x as usize]).extend(1.0),
                false => Vec3::ONE.extend(1.0),
            }
        }
    }
}

// -- pass 2: the most basic BRDF ever written --

#[spirv(vertex)]
pub fn pbr_vert(
    #[spirv(push_constant)] push: &PBRPushConstant,
    position: Vec3,
    normal: Vec3,
    uv: Vec2,
    #[spirv(position)] out: &mut Vec4,
    out_position: &mut Vec3,
    out_normal: &mut Vec3,
    out_uv: &mut Vec2,
) {
    *out = push.vp * position.extend(1.0);
    *out_position = position;
    *out_normal = normal;
    *out_uv = uv;
}

#[spirv(fragment)]
pub fn pbr_frag(
    #[spirv(uniform, descriptor_set = 0, binding = 0)] sbox: &[IVec4; 16],
    position: Vec3,
    normal: Vec3,
    uv: Vec2,
    out: &mut Vec4,
) {
    let v = CAMERA - position;
    let sunlight = brdf::brdf(v, SUN, normal, GOLD);
    let ambient = brdf::brdf(v, (position - AMBIENT).normalize(), normal, GOLD) * 0.8;
    *out = (sunlight + ambient)
        .extend(((sbox[(uv.y * 16.0) as usize].y >> (uv.x * 32.0) as usize) & 0xFF) as f32);
}
