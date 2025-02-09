from pwn import *
import hashlib
from tqdm import tqdm
def getphi(n):
    f = list(factor(n))
    phi = n
    for i,j in f:
        phi = phi // i
        phi *= i- 1
    return phi
def getOrder(g, n):
    f = list(factor(n))
    phi = n
    for i,j in f:
        phi = phi // i
        phi *= i- 1
    f = list(factor(phi))
    f = [list(i) for i in f]
    while True:
        flag = False
        for i in range(len(f)):
            a,b = f[i]
            if b == 0:
                continue
            t = phi // a
            if pow(g, t, n) == 1:
                f[i][1] -= 1
                phi = t
                flag = True
        if flag == False:
            break
    ret = 1
    for i,j in f:
        ret *= pow(i, j)
    return ret
def getOrder2(n):
    f = list(factor(n))
    a = f[0][1]
    m = n//(2**a)
    assert m % 2 == 1
    phi = getphi(m)
    assert pow(2, phi, m) == 1
    b = getOrder(2, m)
    return a, b

def r_value(x, y, μ, int_size_bits=1024):
    """Generates the Fiat-Shamir verifier challenges Hash(xi,yi,μi)"""
    int_size = int_size_bits // 8
    s = (int(x).to_bytes(int_size, "big", signed=False) +
         int(y).to_bytes(int_size, "big", signed=False) +
         int(μ).to_bytes(int_size, "big", signed=False))
    b = hashlib.sha256(s).digest()
    return int.from_bytes(b[:16], "big")
def generate_proof(xi, t, δ, yi, N, i, π, phi, phi2):
    """  Generate the proof, list of μi values """
    l = t
    for _ in tqdm(range(l)):
        t = t - 1 # or t = int(τ / pow(2, i))
        μi = pow(xi, pow(2, pow(2, t, phi2), phi), N)
        ri = r_value(xi, yi, μi) % N
        xi = (pow(xi, ri, N) * μi) % N
        yi = (pow(μi, ri, N) * yi) % N
        π.append(μi)

    return π
ll = 0
count = 0
finish = 0
for _ in (range(100)):
    try:
        pi = []
        conn = process(["./chall-test.py"])
        # conn = remote("chall.lac.tf", int(31182))
        print(conn.recvline().decode())
        g = int(conn.recvline().decode().split(" = ")[1])
        y = pow(g, pow(2, 8)) # Compute for T = 2^3
        conn.recvuntil(b": ")
        conn.sendline(str(y).encode())
        N = int(conn.recvline().decode().split(" = ")[1])
        phi = getOrder(g, N)
        a, phi2 = getOrder2(phi)
        x, phi3 = getOrder2(phi2)

        phit = getOrder(g, N)
        phi2t = getOrder(2, phit)
        phi3t = getOrder(2, phi2t)

        newT = pow(2, (3 + phi3), phi2)
        exp = pow(2, newT, phi)
        length = 3 + phi3
        ll += length.bit_length()
        print("length bits", length.bit_length())
        print("length2 bits", phi3t.bit_length())
        conn.recvuntil(b": ")
        conn.sendline(str(length).encode())
        y = y % N 
        if length.bit_length() > 10:
            conn.close()
            continue
        assert y == pow(g, pow(2, newT), N)
        pi = generate_proof(g, length, 0, y, N, 1, [], phit, phi2)
        # print("pi: ", pi)
        for i in tqdm(range(length)):
            conn.recvuntil(b": ")
            conn.sendline(str(pi[len(pi) - i - 1]).encode())
        conn.recvline().decode()
        flag = conn.recvline().decode()
        
        if "lactf" in flag:
            count += 1
            print(flag)
            print(pi)
            break
        finish += 1
        conn.close()
    except:
        pass
print(flag)
d = ll / 100
print(d)
print(count)
print(finish)