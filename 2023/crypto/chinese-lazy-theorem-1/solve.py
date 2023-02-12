from pwn import *

conn = remote('lac.tf', 31110)

p = int(conn.recvline().decode())
q = int(conn.recvline().decode())

n = p*q

conn.sendlineafter(b">> ", b"1")

# Just set the modulus to something greater than n
# The target is smaller than the modulus, so the result is just the target itself
conn.sendlineafter(b"modulus here: ", str(n+1).encode())

target = int(conn.recvline().decode().strip())

conn.sendlineafter(b">> ", b"2")
conn.sendlineafter(b"guess here: ", str(target).encode())

flag = conn.recvline().decode()

print(flag)
