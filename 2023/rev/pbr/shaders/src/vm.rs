// MATRIXVM (tm) SPEC
// ==================
//
// OPCODES
// - 4 - INC - adds 1 to all elements in the array
// - 2 - IRR - shuffles all elements in the matrix
//     | 11 12 13 14 |      | 33 13 12 22 |
//     | 21 22 23 24 |  ->  | 24 42 43 11 |
//     | 31 32 33 34 |      | 32 44 23 41 |
//     | 41 42 43 44 |      | 14 21 31 34 |
// - 0 - INV - bitwise inverts all elements in the matrix
// - 6 - INT - inteprets (a_11 % 4) * 2 as the next instruction to take

use spirv_std::glam::{Mat4, Vec4};

const CHECKSUMS: [u32;70*3] = [
    0x62f, 0x61f, 0x9d1, 0x9c1, 0x9c1, 0x9c1, 0x9b1, 0x63f, 0x63f, 0x63f, 0x62f, 0x9c1, 0x9c1,
    0x9c1, 0x9c1, 0x9c1, 0x9b1, 0x9a1, 0x64f, 0x64f, 0x63f, 0x63f, 0x63f, 0x62f, 0x62f, 0x61f,
    0x9d1, 0x9d1, 0x9d1, 0x61f, 0x61f, 0x60f, 0x9e1, 0x60f, 0x60f, 0x60f, 0x60f, 0x5ff, 0x9f1,
    0x9f1, 0x5ff, 0x5ff, 0x5ff, 0x5ff, 0x5ff, 0x9f1, 0x9e1, 0x9d1, 0x9c1, 0x9b1, 0x9b1, 0x63f,
    0x9b1, 0x9b1, 0x9a1, 0x64f, 0x63f, 0x9b1, 0x9a1, 0x9a1, 0x9a1, 0x991, 0x991, 0x65f, 0x65f,
    0x991, 0x981, 0x981, 0x66f, 0x981, 0x630, 0x620, 0x9d0, 0x9c0, 0x9c0, 0x9c0, 0x9b0, 0x640,
    0x640, 0x640, 0x630, 0x9c0, 0x9c0, 0x9c0, 0x9c0, 0x9c0, 0x9b0, 0x9a0, 0x650, 0x650, 0x640,
    0x640, 0x640, 0x630, 0x630, 0x620, 0x9d0, 0x9d0, 0x9d0, 0x620, 0x620, 0x610, 0x9e0, 0x610,
    0x610, 0x610, 0x610, 0x600, 0x9f0, 0x9f0, 0x600, 0x600, 0x600, 0x600, 0x600, 0x9f0, 0x9e0,
    0x9d0, 0x9c0, 0x9b0, 0x9b0, 0x640, 0x9b0, 0x9b0, 0x9a0, 0x650, 0x640, 0x9b0, 0x9a0, 0x9a0,
    0x9a0, 0x990, 0x990, 0x660, 0x660, 0x990, 0x980, 0x980, 0x670, 0x980, 0x5eb, 0x5db, 0xa15,
    0xa05, 0xa05, 0xa05, 0x9f5, 0x5fb, 0x5fb, 0x5fb, 0x5eb, 0xa05, 0xa05, 0xa05, 0xa05, 0xa05,
    0x9f5, 0x9e5, 0x60b, 0x60b, 0x5fb, 0x5fb, 0x5fb, 0x5eb, 0x5eb, 0x5db, 0xa15, 0xa15, 0xa15,
    0x5db, 0x5db, 0x5cb, 0xa25, 0x5cb, 0x5cb, 0x5cb, 0x5cb, 0x5bb, 0xa35, 0xa35, 0x5bb, 0x5bb,
    0x5bb, 0x5bb, 0x5bb, 0xa35, 0xa25, 0xa15, 0xa05, 0x9f5, 0x9f5, 0x5fb, 0x9f5, 0x9f5, 0x9e5,
    0x60b, 0x5fb, 0x9f5, 0x9e5, 0x9e5, 0x9e5, 0x9d5, 0x9d5, 0x61b, 0x61b, 0x9d5, 0x9c5, 0x9c5,
    0x62b, 0x9c5,
];

pub const INPUT_1: Mat4 = Mat4::from_cols_array(&[
    0x89 as f32,
    0x9a as f32,
    0x98 as f32,
    0xca as f32,
    0x8f as f32,
    0x95 as f32,
    0xc6 as f32,
    0x9c as f32,
    0xc7 as f32,
    0x85 as f32,
    0x90 as f32,
    0x87 as f32,
    0x80 as f32,
    0x86 as f32,
    0x87 as f32,
    0x86 as f32,
]);

pub const INPUT_2: Mat4 = Mat4::from_cols_array(&[
    0xca as f32,
    0x9c as f32,
    0x8d as f32,
    0xc8 as f32,
    0x8d as f32,
    0x88 as f32,
    0x85 as f32,
    0x8e as f32,
    0x8b as f32,
    0x9a as f32,
    0x9c as f32,
    0x9c as f32,
    0x8b as f32,
    0x89 as f32,
    0x9c as f32,
    0x90 as f32,
]);

pub const INPUT_3: Mat4 = Mat4::from_cols_array(&[
    0x99 as f32,
    0xc8 as f32,
    0x87 as f32,
    0xc8 as f32,
    0x89 as f32,
    0x82 as f32,
    0xc6 as f32,
    0x97 as f32,
    0x7e as f32,
    0x9c as f32,
    0x85 as f32,
    0x87 as f32,
    0x9c as f32,
    0x9a as f32,
    0xc8 as f32,
    0x89 as f32,
]);

fn inc(x: Mat4) -> Mat4 {
    Mat4::from_cols_array(&[
        ((x.x_axis.x + 1.0) % 256.0) as f32,
        ((x.x_axis.y + 1.0) % 256.0) as f32,
        ((x.x_axis.z + 1.0) % 256.0) as f32,
        ((x.x_axis.w + 1.0) % 256.0) as f32,
        ((x.y_axis.x + 1.0) % 256.0) as f32,
        ((x.y_axis.y + 1.0) % 256.0) as f32,
        ((x.y_axis.z + 1.0) % 256.0) as f32,
        ((x.y_axis.w + 1.0) % 256.0) as f32,
        ((x.z_axis.x + 1.0) % 256.0) as f32,
        ((x.z_axis.y + 1.0) % 256.0) as f32,
        ((x.z_axis.z + 1.0) % 256.0) as f32,
        ((x.z_axis.w + 1.0) % 256.0) as f32,
        ((x.w_axis.x + 1.0) % 256.0) as f32,
        ((x.w_axis.y + 1.0) % 256.0) as f32,
        ((x.w_axis.z + 1.0) % 256.0) as f32,
        ((x.w_axis.w + 1.0) % 256.0) as f32,
    ])
}

fn irr(a: Mat4) -> Mat4 {
    Mat4::from_cols_array(&[
        a.z_axis.z,
        a.w_axis.y,
        a.y_axis.z,
        a.w_axis.x,
        a.z_axis.x,
        a.y_axis.w,
        a.w_axis.w,
        a.x_axis.y,
        a.y_axis.x,
        a.z_axis.w,
        a.z_axis.y,
        a.x_axis.z,
        a.y_axis.y,
        a.x_axis.x,
        a.x_axis.w,
        a.w_axis.z,
    ])
}

fn inv(x: Mat4) -> Mat4 {
    Mat4::from_cols_array(&[
        !(x.x_axis.x as u8) as f32,
        !(x.x_axis.y as u8) as f32,
        !(x.x_axis.z as u8) as f32,
        !(x.x_axis.w as u8) as f32,
        !(x.y_axis.x as u8) as f32,
        !(x.y_axis.y as u8) as f32,
        !(x.y_axis.z as u8) as f32,
        !(x.y_axis.w as u8) as f32,
        !(x.z_axis.x as u8) as f32,
        !(x.z_axis.y as u8) as f32,
        !(x.z_axis.z as u8) as f32,
        !(x.z_axis.w as u8) as f32,
        !(x.w_axis.x as u8) as f32,
        !(x.w_axis.y as u8) as f32,
        !(x.w_axis.z as u8) as f32,
        !(x.w_axis.w as u8) as f32,
    ])
}

fn checksum(x: Mat4) -> u32 {
    fn sum(x2: Vec4) -> u32 {
        (x2.x as u32)
            .wrapping_add(x2.y as u32)
            .wrapping_add(x2.z as u32)
            .wrapping_add(x2.w as u32)
    }
    sum(x.x_axis)
        .wrapping_add(sum(x.y_axis))
        .wrapping_add(sum(x.z_axis))
        .wrapping_add(sum(x.w_axis))
}

pub fn calc(mut input: Mat4, ops: [u32; 69], set: u32) -> (bool, Mat4) {
    let mut i = 0;
    while i < ops.len() {
        match ops[i] {
            4 => {
                input = inc(input);
            }
            2 => {
                input = irr(input);
            }
            0 => {
                input = inv(input);
            }
            _ => {
                return (false, Mat4::default());
            }
        }
        if checksum(input) != CHECKSUMS[((set + 1) * 70 - 2 - i as u32) as usize] {
            return (false, Mat4::default());
        }
        i += 1;
    }
    (true, input)
}
