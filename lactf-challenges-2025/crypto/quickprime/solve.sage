#!/usr/bin/env python3

os.environ["TERM"] = "xterm-256color"
from pwn import *
from Crypto.Util.number import isPrime, long_to_bytes
from tqdm import tqdm


def conn():
    if args.LOCAL:
        r = process(["python3", "chall.py"])
        if args.DEBUG:
            gdb.attach(r)
    else:
        r = remote("chall.lac.tf", 31175)

    return r


def main():
    r = conn()

    r.recvline()
    print(a := int(r.recvline().decode().strip().split("=")[-1]))
    print(c := int(r.recvline().decode().strip().split("=")[-1]))
    print(m := int(r.recvline().decode().strip().split("=")[-1]))
    print(n := int(r.recvline().decode().strip().split("=")[-1]))
    print(ct := int(r.recvline().decode().strip().split("=")[-1]))

    e = 65537

    r.close()

    for i in tqdm(range(1, 1500)):

        ap = pow(a, i, m)
        cp = 0
        for j in range(i):
            cp += pow(a, j, m)
        cp = c * cp % m
        try:
            roots = mod(
                (4 * n % m) * pow(ap, -1, m) + pow(cp, 2, m) * pow(ap, -2, m), m
            ).sqrt(all=True)
        except:
            continue
        for root in roots:
            test2x1 = ((-1 * cp * pow(ap, -1, m)) + root) % m
            test2x2 = ((-1 * cp * pow(ap, -1, m)) - root) % m
            candidates = solve_mod(2 * x == int(test2x1), m) + solve_mod(
                2 * x == int(test2x2), m
            )
            test_primes = []
            if len(candidates) > 0:
                for candidate in candidates:
                    if isPrime(int(candidate[0])):
                        test_primes.append(candidate[0])
            else:
                continue

            if len(test_primes) > 0:
                for p in test_primes:
                    q = (ap * p + cp) % m
                    if not isPrime(int(q)):
                        continue
                    if p * q != n:
                        continue

                    t = (int(p) - 1) * (int(q) - 1)
                    d = pow(e, -1, t)

                    print(p, q, n)

                    msg = pow(ct, d, n)
                    pt = long_to_bytes(msg)

                    print(i)
                    print(pt)

                    exit(0)
            else:
                continue


if __name__ == "__main__":
    main()
