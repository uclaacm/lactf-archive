#!/usr/local/bin/python3

import secrets
from Crypto.Util.number import isPrime, bytes_to_long


def generate_67_prime(length: int) -> int:
    while True:
        digits = [secrets.choice("67") for _ in range(length - 1)]
        digits.append("7")

        test = int("".join(digits))
        if isPrime(test, false_positive_prob=1e-12):
            return test


p = generate_67_prime(256)
q = generate_67_prime(256)
n = p * q
e = 65537

FLAG = open("flag.txt", "rb").read()
m = bytes_to_long(FLAG)

c = pow(m, e, n)

print(f"n={n}")
print(f"c={c}")
