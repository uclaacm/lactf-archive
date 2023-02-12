import sys
import os
os.environ['PWNLIB_NOTERM'] = '1'

import pwn
io = pwn.remote("lac.tf", "31140")

n = 20
Z95 = IntegerModRing(95)

def stov(s):
    return vector(Z95, [ord(c)-32 for c in s])

def vtos(v):
    return ''.join([chr(ZZ(v[i])+32) for i in range(n)])

flag = [[]]*2
io.recvuntil(b"reads:\n")
x = io.recvlineS(False)
flag[0] = stov(x)
x = io.recvlineS(False)
flag[1] = stov(x)
F = matrix(Z95, flag)

arr = [[]]*n
for i in range(10):
    s = "".join([chr(33) if i==j else chr(32) for j in range(20)]) + "".join([chr(33) if i+10==j else chr(32) for j in range(20)])
    io.sendlineafter(b"guess: ", s)
    io.recvuntil(b"Incorrect:\n")
    x = io.recvlineS(False)
    arr[i] = stov(x)
    x = io.recvlineS(False)
    arr[i+10] = stov(x)
A = matrix(Z95, arr)

io.recvuntil(b"following:\n")
fake = io.recvlineS(False)
s = vtos(stov(fake[:n])*A)
io.sendlineafter(b"half: ", s)
s = vtos(stov(fake[n:])*A)
io.sendlineafter(b"half: ", s)

io.interactive()
