# Python equivalent of the challenge

flag = "lactf{3asy_3nough_7o_8rute_f0rce_bu7_n0t_ea5y_en0ugh_jus7_t0_brut3_forc3}\n"

global k
k = 0

for c in flag:
    k *= 67
    k += ord(c)
    k &= 0xFFFFF

def r():
    global k
    k = (((k) ^ (k >> 3)) & 1) << 19 | (k >> 1)
    return k & 0xff

print(" ".join([c+str(hex(ord(c) ^ r()))[2:] for c in flag]))

# flag = b6 8c 95 8f 9b 85 4c 5e ec b6 b8 c0 97 93 0b 58 77 50 b0 2c 7e 28 7a f1 b6 04 ef be 5c 44 78 e8 99 81 04 8f 03 40 a7 3f fa b7 08 01 63 52 e3 ad d1 85 9f 94 21 d5 2a 5c 20 d4 31 12 ce aa 16 c7 ad df 29 5d 72 fc 24 90 2c