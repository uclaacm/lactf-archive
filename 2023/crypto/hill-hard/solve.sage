import sys
import os
os.environ['PWNLIB_NOTERM'] = '1'

import pwn
io = pwn.remote("lac.tf", "31141")

n = 20
Z95 = IntegerModRing(95)

def stov(s):
    return vector(Z95, [ord(c)-32 for c in s])

def vtos(v):
    return ''.join([chr(ZZ(v[i])+32) for i in range(n)])

io.recvuntil(b"reads:\n")
x = io.recvlineS(False)
flag = stov(x)

arr = [0]*13
for i in range(13):
    if(i == 0):
        s = 'lactf{' + ''.join([chr(96) for j in range(13)]) + '}'
    else:
        s = 'lactf{' + ''.join([chr(64) if i==j else chr(96) for j in range(13)]) + '}'
    io.sendlineafter(b"guess: ", s)
    x = io.recvlineS(False)
    arr[i] = flag-stov(x)

s = 'l*%?iq' + ''.join([chr(64) for j in range(13)]) + 'x'
io.sendlineafter(b"guess: ", s)
x = io.recvlineS(False)
lin = (flag-stov(x))-arr[0]*47
lin *= pow(4, -1, 95)
for i in range(13):
    arr[i] -= lin

C = matrix(Z95, arr)

arr2 = []
for i in range(13):
    arr2.append([63 if i==j else 64 for j in range(13)])
arr2[0][0] = 64
B = matrix(Z95, arr2)

A = B.inverse()*C

io.recvuntil(b"me:\n")
enc = io.recvlineS(False)
v = stov([enc[6+i] for i in range(13)])
s = vtos(v*A + lin)
io.sendlineafter(b"guess: ", s)

io.interactive()
