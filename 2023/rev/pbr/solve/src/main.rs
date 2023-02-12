use glam::{Mat4, Vec4};

const CHECKSUMS: &[u32] = &[
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

const INPUT_1: Mat4 = Mat4::from_cols_array(&[
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

const INPUT_2: Mat4 = Mat4::from_cols_array(&[
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

const INPUT_3: Mat4 = Mat4::from_cols_array(&[
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
        ((x.x_axis[0] + 1.0) % 256.0) as f32,
        ((x.x_axis[1] + 1.0) % 256.0) as f32,
        ((x.x_axis[2] + 1.0) % 256.0) as f32,
        ((x.x_axis[3] + 1.0) % 256.0) as f32,
        ((x.y_axis[0] + 1.0) % 256.0) as f32,
        ((x.y_axis[1] + 1.0) % 256.0) as f32,
        ((x.y_axis[2] + 1.0) % 256.0) as f32,
        ((x.y_axis[3] + 1.0) % 256.0) as f32,
        ((x.z_axis[0] + 1.0) % 256.0) as f32,
        ((x.z_axis[1] + 1.0) % 256.0) as f32,
        ((x.z_axis[2] + 1.0) % 256.0) as f32,
        ((x.z_axis[3] + 1.0) % 256.0) as f32,
        ((x.w_axis[0] + 1.0) % 256.0) as f32,
        ((x.w_axis[1] + 1.0) % 256.0) as f32,
        ((x.w_axis[2] + 1.0) % 256.0) as f32,
        ((x.w_axis[3] + 1.0) % 256.0) as f32,
    ])
}

fn irr(a: Mat4) -> Mat4 {
    Mat4::from_cols_array(&[
        a.z_axis[2],
        a.w_axis[1],
        a.y_axis[2],
        a.w_axis[0],
        a.z_axis[0],
        a.y_axis[3],
        a.w_axis[3],
        a.x_axis[1],
        a.y_axis[0],
        a.z_axis[3],
        a.z_axis[1],
        a.x_axis[2],
        a.y_axis[1],
        a.x_axis[0],
        a.x_axis[3],
        a.w_axis[2],
    ])
}

fn inv(x: Mat4) -> Mat4 {
    Mat4::from_cols_array(&[
        !(x.x_axis[0] as u8) as f32,
        !(x.x_axis[1] as u8) as f32,
        !(x.x_axis[2] as u8) as f32,
        !(x.x_axis[3] as u8) as f32,
        !(x.y_axis[0] as u8) as f32,
        !(x.y_axis[1] as u8) as f32,
        !(x.y_axis[2] as u8) as f32,
        !(x.y_axis[3] as u8) as f32,
        !(x.z_axis[0] as u8) as f32,
        !(x.z_axis[1] as u8) as f32,
        !(x.z_axis[2] as u8) as f32,
        !(x.z_axis[3] as u8) as f32,
        !(x.w_axis[0] as u8) as f32,
        !(x.w_axis[1] as u8) as f32,
        !(x.w_axis[2] as u8) as f32,
        !(x.w_axis[3] as u8) as f32,
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

fn calc(mut input: Mat4, set: u32) -> Option<Mat4> {
    for i in 0..69 {
        let sum = CHECKSUMS[((set + 1) * 70 - 2 - i) as usize];
        
        let inc_input = inc(input);
        if checksum(inc_input) == sum {
            input = inc_input;
            continue;
        }
        
        let irr_input = irr(input);
        if checksum(irr_input) == sum {
            input = irr_input;
            continue;
        }
        
        let inv_input = inv(input);
        if checksum(inv_input) == sum {
            input = inv_input;
            continue;
        }

        panic!("no solution????");
    }
    
    Some(input)
}

fn main() {
    println!(
        "{:?}",
        calc(INPUT_1, 0)
            .unwrap()
            .to_cols_array()
            .map(|x| char::from_u32(x as u32).unwrap())
            .chunks(4)
            .collect::<Vec<_>>()
    );
    println!(
        "{:?}",
        calc(INPUT_2, 1)
            .unwrap()
            .to_cols_array()
            .map(|x| char::from_u32(x as u32).unwrap())
            .chunks(4)
            .collect::<Vec<_>>()
    );
    println!(
        "{:?}",
        calc(INPUT_3, 2)
            .unwrap()
            .to_cols_array()
            .map(|x| char::from_u32(x as u32).unwrap())
            .chunks(4)
            .collect::<Vec<_>>()
    );
}
