from pwn import *

def flip(a):
   return int(bin(a)[2:].zfill(128)[::-1], 2)
def gf2_128_mult(x, y):
    assert x < (1 << 128)
    assert y < (1 << 128)
    res = 0
    for i in range(127, -1, -1):
        res ^= x * ((y >> i) & 1)  # branchless
        x = (x >> 1) ^ ((x & 1) * 0xE1000000000000000000000000000000)
    assert res < 1 << 128
    return res
def gf2_sqrt(inp):
    cum = inp
    for i in range(127):
        cum = gf2_128_mult(cum, cum)
    return cum

def power(a, exp):
    cum = a
    for i in bin(exp)[3:]:
      cum = gf2_128_mult(cum, cum)
      if i == "1":
         gf2_128_mult(cum, a)
    return cum

def gf_degree(a) :
  res = 0
  a >>= 1
  while (a != 0) :
    a >>= 1
    res += 1
  return res

def gf_invert(a, mod=340282366920938463463374607431768211591) :
  v = mod
  g1 = 1
  g2 = 0
  j = gf_degree(a) - 128

  while (a != 1) :
    if (j < 0) :
      a, v = v, a
      g1, g2 = g2, g1
      j = -j

    a ^= v << j
    g1 ^= g2 << j

    a %= 2**128  # Emulating 8-bit overflow
    g1 %= 2**128 # Emulating 8-bit overflow

    j = gf_degree(a) - gf_degree(v)

  return g1
def get_inverse(a):
   f = flip(a)
   inv = gf_invert(f)
   back = flip(inv)
   return back

def make_request(left, right):
    conn.sendline(b"1")
    conn.recvuntil(b"> ")
    conn.sendline(left)
    conn.recvuntil(b"> ")
    conn.sendline(right)
    mac = conn.recvline()
    return mac.strip().decode()
# conn = process(["./chall.py"])
conn = remote("chall.lac.tf", 32222)
print(conn.readline().decode())

right = make_request(b"", b"0"*32)
right2 = make_request(b"", b"8" + b"0"*31)


left = make_request(b"0"*32, b"")

right = int(right, 16)
right2 = int(right2, 16)

left = int(left, 16)


hsquare = right ^ right2
H = gf2_sqrt(hsquare)
assert gf2_128_mult(H, H) == hsquare

first = right ^ left

h3 = gf2_128_mult(hsquare, H)

div = get_inverse(h3 ^ hsquare)
secret = gf2_128_mult(div, first)
ans = hex(secret)[2:]
conn.sendline(b"2")
conn.recvuntil(b"> ")
conn.sendline(b"0"*(32 - len(ans)) + ans.encode())
print(conn.readline().decode())