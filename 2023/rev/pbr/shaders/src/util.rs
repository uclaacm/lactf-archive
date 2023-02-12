use core::ops::{Add, Mul, Sub};

use spirv_std::{
    glam::Vec3,
    num_traits::{clamp, clamp_min},
};

#[inline]
pub fn square(num: f32) -> f32 {
    num * num
}

#[inline]
pub fn sat(num: f32) -> f32 {
    clamp(num, 0.0, 1.0)
}

#[inline]
pub fn clamp_for_divide2(num: f32) -> f32 {
    clamp_min(num, 0.045)
}

/// https://registry.khronos.org/OpenGL-Refpages/gl4/html/mix.xhtml
#[inline]
pub fn mix<A, B>(x: A, y: A, a: B) -> A
where
    A: Add<A, Output = A> + Sub<A, Output = A> + Mul<B, Output = A> + Copy,
{
    x + ((y - x) * a)
}

/// https://registry.khronos.org/OpenGL-Refpages/gl4/html/reflect.xhtml
#[inline]
pub fn reflect(i: Vec3, n: Vec3) -> Vec3 {
    i - 2.0 * n.dot(i) * n
}

/// https://registry.khronos.org/OpenGL-Refpages/gl4/html/smoothstep.xhtml
#[inline]
pub fn smoothstep(edge0: f32, edge1: f32, x: f32) -> f32 {
    let t = clamp((x - edge0) / (edge1 - edge0), 0.0, 1.0);
    t * t * (3.0 - 2.0 * t)
}
