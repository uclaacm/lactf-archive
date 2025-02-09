from pwn import *
from ctypes import CDLL
from time import time

def shuffle(l):
    for i in range(len(l) - 1, -1, -1):
        j = libc.rand() % (i + 1)
        l[i], l[j] = l[j], l[i]

# p = process("./the-eye")
p = remote("chall.lac.tf", 31313)
msg = p.recvline(keepends=False)

libc = CDLL("./libc.so.6")
for i in range(-10, 11):
    libc.srand(int(time()) + i)

    indices = list(range(len(msg)))
    for _ in range(22):
        shuffle(indices)

    out = [0] * len(msg)
    for (i, c) in enumerate(msg):
        out[indices[i]] = c

    dec = bytes(out).decode()
    if "lactf{" in dec:
        print(dec)
