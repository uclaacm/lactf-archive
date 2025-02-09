# shuffle-revenge

LA CTF 2025 - Crypto

Cracking an LCG-based shuffling algorithm using lattices

Challenge author writeup by [Arnav Vora](https://github.com/AVDestroyer)

> Casino grade shuffling: use this to always WIN WIN WIN!!!

## Challenge and solve

This challenge uses an LCG to generate sorting indices for a "random" shuffle.

```py
def shuffle_msg(msg: bytes, L: LCG) -> str:

    l = len(msg)

    positions = [L.next() for i in range(l)]

    sorted_msg = sorted(zip(positions, msg))

    output = bytes([c[1] for c in sorted_msg])

    return binascii.hexlify(output).decode()
```

Refer to my previous [writeup](https://hackmd.io/@Arnav-Vora/rJ60YkPQkx) on any%-ssg last year for the basics of LCG seedcracking using lattices.

We are allowed to send up to 256 bytes to be shuffled, and we also received a shuffled secret. Our goal is to unshuffle the secret which gives us the flag. We are also given the LCG parameters, so we just need to find the LCG seed used to create the shuffle.

This writeup will mainly focus on how I created the bounds for the LCG outputs. I can send 256 bytes to be shuffled and observe the output, which tells us the ordering of 256 consecutive LCG outputs. Suppose that byte $i$ is shuffled to position $p_i$. Also suppose that the LCG starts at seed $s$ and $LCG_k(s)$ is the LCG applied $k$ times to $s$. Suppose that $p_i > p_j$, then $LCG_i(s) > LCG_j(s)$.

This allows us to write 255 inequalities on LCG outputs from $LCG_1$ to $LCG_{256}$ (for example, $LCG_{192} < LCG_7 < LCG_{242} < ...$ could be some ordering).

The size of the seed is 64 bits, so we need to write some constraints on the seed that give 64 bits of information total. Also, the solution method ends up being exponential in the number of contraints, so we should probably not use more than 16 constraints. 16 constraints would mean that each constraint needs to provide 4 bits of information for 64 bits total. How can we write these constraints?

From testing, I found that you can divide the range of possible seeds into 16 ranges, and choose LCG outputs that are likely to fall into those ranges. For example, the smallest LCG output is likely in the first of the 16 ranges, the 16th LCG output is likely in the second of the 16 ranges, etc. With some simulations, I found that the likelihood of all 16 of these conditions being true is around 20% if we shuffle 256 bytes total, so this is a viable path.

So, to solve the challenge, I send 256 bytes to be shuffled, recover the ordering, and create constraints based on the aforementioned guessing of seed ranges based on the ordering of LCG outputs. Then, I plug these ranges into my lattice solution method, find a seed that satisfies the conditions, and step backward 64 seeds to recover the seed using to shuffle the _secret_. Then, I simply unshuffle the secret and get the flag.

I ran 15 instances of `solve.sage` in parallel and searched for a flag output in any of them.4

Also, my strategy of brute forcing points around the midpoint was not entirely working for this challenge (not sure why). However, the endpoints of the transformed parallellopiped were very close to each other so I simply brute forced all possible points in between these endpoints (in a cube)

## Solve script(s)

### Bash

```bash
#!/bin/bash
rm -rf solve_runs
mkdir solve_runs

for i in {1..15}; do
  (
    sage solve.sage ${1:-} 2>&1 | tee solve_runs/output_$i.log | grep -E "lactf{.+}"
  ) &
done
wait
```

### Sage

```py
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
```
