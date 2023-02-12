//! Based off of "Seascape" by TDM (CC-BY-NC-SA-3.0)

use core::f32::consts::PI;

use spirv_std::{
    glam::{mat2, vec2, vec3, Mat2, Mat3, Vec2, Vec3, Vec3Swizzles},
    num_traits::Float,
};

use crate::util::*;

const NUM_STEPS: u32 = 8;

// sea
const ITER_GEOMETRY: u32 = 3;
const ITER_FRAGMENT: u32 = 5;
const SEA_HEIGHT: f32 = 0.6;
const SEA_CHOPPY: f32 = 4.0;
const SEA_SPEED: f32 = 0.8;
const SEA_FREQ: f32 = 0.16;
const SEA_BASE: Vec3 = vec3(0.0, 0.09, 0.18);
const SEA_WATER_COLOR: Vec3 = vec3(0.8 * 0.6, 0.9 * 0.6, 0.6 * 0.6);
const OCTAVE_M: Mat2 = mat2(vec2(1.6, 1.2), vec2(-1.2, 1.6));

// math
fn from_euler(ang: Vec3) -> Mat3 {
    let a1 = vec2(ang.x.sin(), ang.x.cos());
    let a2 = vec2(ang.y.sin(), ang.y.cos());
    let a3 = vec2(ang.z.sin(), ang.z.cos());
    Mat3::from_cols(
        vec3(
            a1.y * a3.y + a1.x * a2.x * a3.x,
            a1.y * a2.x * a3.x + a3.y * a1.x,
            -a2.y * a3.x,
        ),
        vec3(-a2.y * a1.x, a1.y * a2.y, a2.x),
        vec3(
            a3.y * a1.x * a2.x + a1.y * a3.x,
            a1.x * a3.x - a1.y * a3.y * a2.x,
            a2.y * a3.y,
        ),
    )
}

fn hash(p: Vec2) -> f32 {
    let h = p.dot(vec2(127.1, 311.7));
    (h.sin() * 43758.5453123).fract()
}

fn noise(p: Vec2) -> f32 {
    let i = p.floor();
    let f = p.fract();
    let u = f * f * (3.0 - 2.0 * f);
    -1.0 + 2.0
        * mix(
            mix(hash(i + vec2(0.0, 0.0)), hash(i + vec2(1.0, 0.0)), u.x),
            mix(hash(i + vec2(0.0, 1.0)), hash(i + vec2(1.0, 1.0)), u.x),
            u.y,
        )
}

// lighting
fn diffuse(n: Vec3, l: Vec3, p: f32) -> f32 {
    (n.dot(l) * 0.4 + 0.6).powf(p)
}

fn specular(n: Vec3, l: Vec3, e: Vec3, s: f32) -> f32 {
    let nrm = (s + 8.0) / (PI * 8.0);
    reflect(e, n).dot(l).max(0.0).powf(s) * nrm
}

// sky
fn get_sky_color(mut e: Vec3) -> Vec3 {
    e.y = (e.y.max(0.0) * 0.8 + 0.2) * 0.8;
    vec3((1.0 - e.y) * 0.6, 1.0 - e.y, 0.6 + (1.0 - e.y).powf(2.0)).zyx() * 1.1
}

// sea
fn sea_octave(mut uv: Vec2, choppy: f32) -> f32 {
    uv += noise(uv);
    let mut wv = 1.0 - vec2(uv.x.sin(), uv.y.sin()).abs();
    let swv = vec2(uv.x.cos(), uv.y.cos()).abs();
    wv = mix(wv, swv, wv);
    (1.0 - (wv.x * wv.y).powf(0.65)).powf(choppy)
}

fn map(p: Vec3, sea_time: f32) -> f32 {
    let mut freq = SEA_FREQ;
    let mut amp = SEA_HEIGHT;
    let mut choppy = SEA_CHOPPY;
    let mut uv = p.xz();
    uv.x *= 0.75;

    let mut d;
    let mut h = 0.0;
    for _ in 0..ITER_GEOMETRY {
        d = sea_octave((uv + sea_time) * freq, choppy);
        d += sea_octave((uv - sea_time) * freq, choppy);
        h += d * amp;
        uv = OCTAVE_M * uv;
        freq *= 1.9;
        amp *= 0.22;
        choppy = mix(choppy, 1.0, 0.2);
    }

    p.y - h
}

fn map_detailed(p: Vec3, sea_time: f32) -> f32 {
    let mut freq = SEA_FREQ;
    let mut amp = SEA_HEIGHT;
    let mut choppy = SEA_CHOPPY;
    let mut uv = p.xz();
    uv.x *= 0.75;

    let mut d;
    let mut h = 0.0;
    for _ in 0..ITER_FRAGMENT {
        d = sea_octave((uv + sea_time) * freq, choppy);
        d += sea_octave((uv - sea_time) * freq, choppy);
        h += d * amp;
        uv = OCTAVE_M * uv;
        freq *= 1.9;
        amp *= 0.22;
        choppy = mix(choppy, 1.0, 0.2);
    }

    p.y - h
}

fn get_sea_color(p: Vec3, n: Vec3, l: Vec3, eye: Vec3, dist: Vec3) -> Vec3 {
    let fresnel = (1.0 - n.dot(-eye)).clamp(0.0, 1.0);
    let fresnel = fresnel.powf(3.0).min(0.5);

    let reflected = get_sky_color(reflect(eye, n));
    let refracted = SEA_BASE + diffuse(n, l, 80.0) * SEA_WATER_COLOR * 0.12;

    let mut color = mix(refracted, reflected, fresnel);

    let atten = (1.0 - dist.length_squared() * 0.001).max(0.0);
    color += SEA_WATER_COLOR * (p.y - SEA_HEIGHT) * 0.18 * atten;

    color += Vec3::splat(specular(n, l, eye, 60.0));

    color
}

// tracing
fn get_normal(p: Vec3, eps: f32, sea_time: f32) -> Vec3 {
    let mut n = Vec3::default();
    n.y = map_detailed(p, sea_time);
    n.x = map_detailed(vec3(p.x + eps, p.y, p.z), sea_time) - n.y;
    n.z = map_detailed(vec3(p.x, p.y, p.z + eps), sea_time) - n.y;
    n.y = eps;
    n.normalize()
}

fn height_map_tracing(ori: Vec3, dir: Vec3, sea_time: f32) -> (Vec3, f32) {
    let mut p = Vec3::default();
    let mut tm = 0.0;
    let mut tx = 1000.0;
    let mut hx = map(ori + dir * tx, sea_time);
    if hx > 0.0 {
        p = ori + dir * tx;
        return (p, tx);
    }
    let mut hm = map(ori + dir * tm, sea_time);
    let mut tmid = 0.0;
    for _ in 0..NUM_STEPS {
        tmid = mix(tm, tx, hm / (hm - hx));
        p = ori + dir * tmid;
        let hmid = map(p, sea_time);
        if hmid < 0.0 {
            tx = tmid;
            hx = hmid;
        } else {
            tm = tmid;
            hm = hmid;
        }
    }
    (p, tmid)
}

fn get_pixel(coord: Vec2, time: f32, resolution: Vec2) -> Vec3 {
    let sea_time = 1.0 + time * SEA_SPEED;
    let epsilon_nrm = 0.1 / resolution.x;

    let mut uv: Vec2 = coord / resolution;
    uv = 1.0 - uv * 2.0;
    uv.x *= resolution.x / resolution.y;

    // ray
    let time2: f32 = 1.0;
    let ang = vec3(0.0, 0.0, 1.0);
    let ori = vec3(0.0, 2.5, time2 * 5.0);
    let dir = from_euler(ang) * uv.extend(-1.0).normalize();

    // tracing
    let (p, _) = height_map_tracing(ori, dir, sea_time);
    let dist = p - ori;
    let n = get_normal(p, dist.length_squared() * epsilon_nrm, sea_time);
    let light = vec3(0.0, 1.0, 0.8).normalize();

    // color
    return mix(
        get_sky_color(dir),
        get_sea_color(p, n, light, dir, dist),
        smoothstep(0.0, -0.02, dir.y).powf(0.2),
    );
}

pub fn render_sea_with_aa(coord: Vec2, time: f32, resolution: Vec2) -> Vec3 {
    let mut color = Vec3::default();
    for i in -1..=1 {
        for j in -1..=1 {
            let uv = coord + vec2(i as f32, j as f32) / 3.0;
            color += get_pixel(uv, time, resolution);
        }
    }
    color /= 9.0;

    // post
    color.powf(0.65)
}
