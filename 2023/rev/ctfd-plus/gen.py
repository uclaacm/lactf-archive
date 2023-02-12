import random

MOD = 2**32
def mangle(v):
    for i in range(32):
        v = (v * v) % MOD
        v = ((v >> i) | (v << (32 - i))) % MOD
        v = (v * 0x1337) % MOD
        v = (v + 0x4201337) % MOD
        v = v ^ ((i * 0x13371337) % MOD)
    return ((v & 0xff) + ((v >> 8) & 0xff) + ((v >> 16) & 0xff) + ((v >> 24) & 0xff)) % 256

flag = b"lactf{m4yb3_th3r3_1s_s0m3_m3r1t_t0_us1ng_4_db}\x00"
enc = []

for c in flag:
    while True:
        r = random.randrange(MOD)
        if mangle(r) == c:
            enc.append(r)
            break

print(f"#define ENCLEN {len(enc)}")
print(f"unsigned int enc[ENCLEN] = {{{', '.join(hex(x) for x in enc)}}};")
