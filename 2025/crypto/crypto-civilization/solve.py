#!/usr/bin/env python3

from pwn import *
import binascii
import hashlib
from tqdm import tqdm


def PRG(s: bytes) -> bytes:
    assert len(s) == 2
    h = hashlib.new("sha3_256")
    h.update(s)

    out = h.digest()
    return out[:4]


def xor_bytes(bytes1: bytes, bytes2: bytes) -> bytes:
    if len(bytes1) != len(bytes2):
        raise ValueError("Byte objects must be of the same length")

    return bytes(b1 ^ b2 for b1, b2 in zip(bytes1, bytes2))


def conn():
    if args.LOCAL:
        r = process(["python3", "chall.py"])

    else:
        r = remote("chall.lac.tf", 31173)

    return r


def main():
    r = conn()

    r.recvline()
    r.recvline()
    r.recvline()

    for i in tqdm(range(200)):
        print(i)
        r.recvline().decode()
        y = binascii.unhexlify(r.recvline().decode().strip().split()[-1].encode())

        doable = False
        send = b""
        seed1 = b""
        seed2 = b""

        mitm = {}

        for i in range(2**16):
            x = PRG(i.to_bytes(2, "big"))
            x2 = xor_bytes(x, y)
            mitm[x2] = i

        for i in range(2**16):
            x2 = PRG(i.to_bytes(2, "big"))
            if x2 in mitm:
                doable = True
                send = PRG(mitm[x2].to_bytes(2, "big"))
                seed1 = mitm[x2].to_bytes(2, "big")
                seed2 = i.to_bytes(2, "big")

        if not doable:
            seed1 = b"\x00a"
            seed2 = b"\x00a"
            send = PRG(b"\x00a")

        r.recvuntil(b"> ")

        r.sendline(send.hex().encode())

        choice = 0 if r.recvline().decode().strip().split()[4] == "chicken?" else 1

        r.recvuntil(b"> ")

        if choice == 0:
            r.sendline(seed1.hex().encode())

        else:
            if doable:
                r.sendline(seed2.hex().encode())
            else:
                r.sendline(b"\x00a".hex().encode())

        print(r.recvline().decode())

    r.interactive()


if __name__ == "__main__":
    main()
