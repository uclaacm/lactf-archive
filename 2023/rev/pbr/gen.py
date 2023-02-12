# generates the final data inserted
# into the shader as the vm input

# MATRIXVM (tm) SPEC
# ==================
#
# OPCODES
# - 4 - INC - adds 1 to all elements in the array 
# - 2 - IRR - shuffles all elements in the matrix
#     | 11 12 13 14 |      | 33 13 12 22 |
#     | 21 22 23 24 |  ->  | 24 42 43 11 |
#     | 31 32 33 34 |      | 32 44 23 41 |
#     | 41 42 43 44 |      | 14 21 31 34 |
# - 0 - INV - bitwise inverts all elements in the matrix
# - 6 - INT - inteprets (a_11 % 4) * 2 as the next instruction to take

import random

r = random.Random(42069)

FLAG = list(b"lactf{ru5t_vu1k4n_n_sp1rv_mak3_pr3tty_ba53d_r3v}")
FLAG = FLAG[0:16]
# print(FLAG)

def inc(x):
    return [(a + 1) % 256 for a in x]

def dec(x):
    return [(a - 1) % 256 for a in x]

def irr(a):
    x = [0] * 16
    x[7]  = a[0]
    x[2]  = a[1]
    x[1]  = a[2]
    x[12] = a[3]
    x[13] = a[4]
    x[3]  = a[5]
    x[10] = a[6]
    x[4]  = a[7]
    x[14] = a[8]
    x[8]  = a[9]
    x[0]  = a[10]
    x[15] = a[11]
    x[11] = a[12]
    x[5]  = a[13]
    x[6]  = a[14]
    x[9]  = a[15]
    return x

def un_irr(x):
    a = [0] * 16
    a[0]  = x[7]
    a[1]  = x[2]
    a[2]  = x[1]
    a[3]  = x[12]
    a[4]  = x[13]
    a[5]  = x[3]
    a[6]  = x[10]
    a[7]  = x[4]
    a[8]  = x[14]
    a[9]  = x[8]
    a[10] = x[0]
    a[11] = x[15]
    a[12] = x[11]
    a[13] = x[5]
    a[14] = x[6]
    a[15] = x[9]
    return a

def inv(x):
    return [~a & 0xFF for a in x]

def checksum(x):
    return sum(x)

checksums = []
ops = []
checksums.append(checksum(FLAG))

for i in range(0, 69):
    old_checksum = checksum(FLAG)
    match(r.randint(0, 2)):
        case 0:
            ops.append(4)
            FLAG = dec(FLAG)
            checksums.append(checksum(FLAG))
            assert(checksum(irr(FLAG)) != old_checksum and checksum(inv(FLAG)) != old_checksum)
        case 1:
            ops.append(2)
            FLAG = irr(FLAG)
            checksums.append(checksum(FLAG))
            assert(checksum(inc(FLAG)) != old_checksum and checksum(inv(FLAG)) != old_checksum)
        case 2:
            ops.append(0)
            FLAG = inv(FLAG)
            checksums.append(checksum(FLAG))
            assert(checksum(inc(FLAG)) != old_checksum and checksum(irr(FLAG)) != old_checksum)

print(["0x%x" % (x & 0xffffffff) for x in FLAG])
print(["0x%x" % (x & 0xffffffff) for x in checksums])
print()
print(ops[::-1])
