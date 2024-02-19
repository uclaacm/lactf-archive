from Crypto.Util.number import *
from math import gcd
from pwn import *

conn = remote("chall.lac.tf", 31171)
ct = int(conn.recvline().split()[-1])
N = int(conn.recvline().split()[-1])
e = int(conn.recvline().split()[-1])
a = 1
p,q = 0,0
while 1:
    conn.recvuntil(b"> ")
    conn.sendline(b"1")
    b = int(conn.recvline())
    if b != 1 and b != N -1:
        p = gcd(a + b, N)
        break
q = N // p
d = pow(e, -1, (p-1)*(q-1))
pt = pow(ct, d, N)
print(long_to_bytes(pt))
