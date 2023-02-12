//! in which i steal my own code (tm)

use crate::util::*;
use core::f32::consts::FRAC_1_PI;
use spirv_std::{
    glam::Vec3,
    num_traits::{abs, Pow},
};

#[repr(C)]
pub struct SimpleMaterial {
    pub color: Vec3,
    pub metallic: f32,
    pub roughness: f32,
    pub reflectance: f32,
    pub emission: f32,
}

// v - view unit vector
// l - incident light unit vector
// n - surface normal unit vector
// h - half unit vector between v and n

/// Normal distribution function
fn d_ggx(roughness: f32, noh: f32) -> f32 {
    let a = noh * roughness;
    let k = roughness / (1.0 - noh * noh + a * a);
    k * k * FRAC_1_PI
}

// geometric function
fn v_smith_gxx_correlated(nov: f32, nol: f32, roughness: f32) -> f32 {
    let ggxv = nol * (nov * (1.0 - roughness) + roughness);
    let ggxl = nov * (nol * (1.0 - roughness) + roughness);
    0.5 / (ggxv + ggxl)
}

// Fresnel effect
fn f_schlick(u: f32, f0: Vec3) -> Vec3 {
    f0 + (Vec3::ONE - f0) * (1.0 - u).pow(5)
}

// Diffuse
const fn fd_lambert() -> f32 {
    FRAC_1_PI
}

pub fn brdf(v: Vec3, l: Vec3, n: Vec3, material: SimpleMaterial) -> Vec3 {
    let nol = sat(n.dot(l));
    if nol == 0.0 {
        return Vec3::ZERO;
    }

    let h = (v + l).normalize();
    let nov = abs(n.dot(v)) + 1e-5;
    let noh = sat(n.dot(h));
    let loh = sat(l.dot(h));

    let diffuse_color = (1.0 - material.metallic) * material.color;
    #[rustfmt::skip]
    let f0 = Vec3::ONE * 0.16 * square(material.reflectance) * (1.0 - material.metallic) + material.color * material.metallic;
    let roughness = square(clamp_for_divide2(material.roughness));

    let d = d_ggx(roughness, noh);
    let f = f_schlick(loh, f0);
    let v = v_smith_gxx_correlated(nov, nol, roughness);

    // specular
    let fr = (d * v) * f;
    // diffuse
    let fd = diffuse_color * fd_lambert();

    fr + fd
}
