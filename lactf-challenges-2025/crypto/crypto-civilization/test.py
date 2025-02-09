import hashlib
import os
from tqdm import tqdm


def xor_bytes(bytes1: bytes, bytes2: bytes) -> bytes:
    """
    XOR two byte objects of equal length.
    """
    if len(bytes1) != len(bytes2):
        raise ValueError("Byte objects must be of the same length")

    # XOR each pair of corresponding bytes
    return bytes(b1 ^ b2 for b1, b2 in zip(bytes1, bytes2))


def PRG(s: bytes, N: int) -> bytes:
    assert len(s) == 3
    assert (
        N == 20
    )  # this is the value of N we will use. If greater than 16, use a longer hash digest (384 or 512)
    h = hashlib.new("sha3_256")
    h.update(s)

    out = h.digest()
    return out[:5]


mitm = {}

successes = 0

for k in tqdm(range(100)):
    y = os.urandom(5)
    mitm = {}
    # print(k, y)

    for i in range(2**20):
        x = PRG(i.to_bytes(3, "big"), 20)
        x2 = xor_bytes(x, y)
        mitm[x2] = i

    for i in range(2**20):
        x2 = PRG(i.to_bytes(3, "big"), 20)
        if x2 in mitm:
            # print(f'{(i.to_bytes(2,"big"), mitm[x2].to_bytes(2,"big"))} {y} {k})')
            successes += 1
            break

print(successes)
