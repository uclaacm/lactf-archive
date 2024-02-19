#!/usr/bin/env python3

from pwn import *

exe = ELF("./aplet321")

context.binary = exe

if args.REMOTE:
    r = remote("chall.lac.tf", 31321)
else:
    r = process([exe.path])
    if args.GDB:
        gdb.attach(r)

r.sendline(b'pretty ' * 15 + b'please ' * 39 + b'flag')

r.interactive()
