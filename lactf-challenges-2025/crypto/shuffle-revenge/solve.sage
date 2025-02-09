import os

os.environ["TERM"] = "xterm-256color"
from pwn import *
import binascii
from itertools import product
import base64


def conn():
    if args.LOCAL:
        r = process(["python3", "shuffler.py"])
        if args.DEBUG:
            gdb.attach(r)
    else:
        r = remote("chall.lac.tf", int(31172))

    return r


def lcg(a, c, m, seed):
    return (a * seed + c) % m


def inv_lcg(a, c, m, seed):
    return ((seed - c) * pow(a, -1, m)) % m


def unsort(params, current_seed, sorted_msg: bytes, length):
    nums = []
    a, c, m = params
    seed = current_seed
    for i in range(length):
        nums.append((seed, i))
        seed = lcg(a, c, m, seed)

    sorted_nums = sorted(nums)

    orig = [0] * length
    for i in range(length):
        orig[sorted_nums[i][1]] = sorted_msg[i]

    return bytes(orig)


def main():

    # test alphabet
    test = bytes([i for i in range(256)])

    r = conn()

    r.recvline()
    a = int(r.recvline().decode().strip().split("=")[1])
    c = int(r.recvline().decode().strip().split("=")[1])
    m = int(r.recvline().decode().strip().split("=")[1])
    print(f"a={a}\nc={c}\nm={m}")

    r.sendlineafter(b"> ", b"2")
    shuffled = binascii.unhexlify(r.recvline().decode().strip().split()[-1].encode())

    r.sendlineafter(b"> ", b"1")
    r.recvline()
    r.sendline(binascii.hexlify(test))
    response = binascii.unhexlify(r.recvline().decode().strip()[13:].encode())

    # figure out shuffling

    selections = []
    for i in range(0, 256, 16):
        selections.append((response[i], test.index(response[i])))

    # create bounds
    # x vector: [seed0, one, k1, k2, .. k16]
    mins = [0, (1 << 64) / 16]
    maxs = [(1 << 64) / 16, (1 << 64) / 16]
    fail = False

    dim = 18

    a_helper = [[0] * dim for j in range(dim)]
    a_helper[0][0] = 1 / 16
    a_helper[1][1] = (1 << 64) / 16

    for i, (_, index) in enumerate(selections):
        lb = max(0, (i * 16) / 256 * (1 << 64) - (1 << 64) / 32)
        ub = min(1 << 64, (i * 16) / 256 * (1 << 64) + (1 << 64) / 32)

        a_helper[2 + i][2 + i] = m
        a_helper[2 + i][0] = pow(a, index, m)
        s = 0
        for j in range(index):
            s += pow(a, j, m)
        s *= c
        s %= m
        a_helper[2 + i][1] = s

        mins.append(lb)
        maxs.append(ub)

    if fail:
        exit(0)

    A = matrix(QQ, a_helper)
    minvector = vector(QQ, mins)
    maxvector = vector(QQ, maxs)

    AL = A.transpose().LLL().transpose()
    ALi = AL.inverse()

    LHSt = ALi * minvector
    RHSt = ALi * maxvector

    for i in range(dim):
        print(LHSt[i], RHSt[i], RHSt[i] - LHSt[i])

    search_area = 1
    ranges = []
    for x, y in zip(LHSt, RHSt):
        if floor(x) == floor(y) and y != floor(y):
            x -= 1
            y += 1
        if y > x:
            ranges.append(range(ceil(x), floor(y + 1)))
            search_area *= abs(ceil(y) - floor(x)) + 1
        else:
            ranges.append(range(floor(y), floor(x + 1)))
            search_area *= abs(floor(x) - floor(y)) + 1
    print(search_area)

    solutions = []
    print(ranges)

    for consider in product(*ranges):
        considervec = vector(ZZ, list(consider))
        check = AL * considervec

        # check if the current point is inside the box
        correct = True
        for k in range(dim):
            if minvector[k] > check[k] or maxvector[k] < check[k]:
                correct = False
        if correct:
            solutions.append(check)

    print(f"solution:{solutions}")

    seed = solutions[0][0] * 16

    for i in range(64):
        seed = inv_lcg(a, c, m, seed)
    old_seed = seed

    unsorted = unsort((a, c, m), old_seed, shuffled, 64)

    print(unsorted)

    r.sendlineafter(b"> ", b"3")

    r.sendlineafter(b"> ", binascii.hexlify(unsorted))

    r.interactive()

    exit(0)


if __name__ == "__main__":
    main()
