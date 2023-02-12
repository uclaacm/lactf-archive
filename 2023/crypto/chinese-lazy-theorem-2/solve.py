from pwn import *

conn = remote('lac.tf', 31111)

p = int(conn.recvline().decode())
q = int(conn.recvline().decode())

conn.sendlineafter(b">> ", b"1")
conn.sendlineafter(b"modulus here: ", str(p).encode())
p_mod = int(conn.recvline().decode().strip())

conn.sendlineafter(b">> ", b"1")
conn.sendlineafter(b"modulus here: ", str(q).encode())
q_mod = int(conn.recvline().decode().strip())

# If you don't know what this is, look up "Extended Euclid Algorithm"
def extended_euclid(a, b):
    if b > a:
        a, b = b, a

    r0 = a
    r1 = b
    s0 = 1 # s corresponds to a
    s1 = 0
    t0 = 0 # t corresponds to b
    t1 = 1

    while not r0 % r1 == 0:
        q = r0 // r1
        r0, r1 = r1, r0 % r1
        s0, s1 = s1, s0 - q*s1
        t0, t1 = t1, t0 - q*t1

    return s1, t1

s, t = extended_euclid(p, q)

target = 0

if p > q:
    target = (q_mod*s*p + p_mod*t*q) % (p*q)
else:
    target = (q_mod*t*p + p_mod*s*q) % (p*q)

conn.sendlineafter(b">> ", b"2")
for i in range(30):
    next_guess = target + i*p*q
    conn.sendlineafter(b"guess here: ", str(next_guess).encode())
    response = conn.recvline().decode().strip()
    if response != "nope":
        print(response)
        break
