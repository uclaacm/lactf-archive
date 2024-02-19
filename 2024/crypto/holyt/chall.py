#!/usr/local/bin/python
import random
def legendre(a, p):
    return pow(a, (p - 1) // 2, p)

def tonelli(n, p):
    q = p - 1
    s = 0
    while q % 2 == 0:
        q //= 2
        s += 1
    if s == 1:
        return pow(n, (p + 1) // 4, p)
    for z in range(2, p):
        if p - 1 == legendre(z, p):
            break
    c = pow(z, q, p)
    r = pow(n, (q + 1) // 2, p)
    t = pow(n, q, p)
    m = s
    t2 = 0
    while (t - 1) % p != 0:
        t2 = (t * t) % p
        for i in range(1, m):
            if (t2 - 1) % p == 0:
                break
            t2 = (t2 * t2) % p
        b = pow(c, 1 << (m - i - 1), p)
        r = (r * b) % p
        c = (b * b) % p
        t = (t * c) % p
        m = i
    return r
def xgcd(a, b): 
    if a == 0 : 
        return 0,1
             
    x1,y1 = xgcd(b%a, a) 
    x = y1 - (b//a) * x1 
    y = x1 
     
    return x,y 
def crt(a, b, m, n):
    m1, n1 = xgcd(m, n)
    return ((b *m * m1 + a *n*n1) % (m * n))

def advice(x, p, q):
    if legendre(x, p) != 1:
        exit()
    if legendre(x, q) != 1:
        exit()
    x1 = tonelli(x, p) * random.choice([1, -1])
    x2 = tonelli(x, q) * random.choice([1, -1])
    y = crt(x1, x2, p, q)
    return y
    
def main():
    p = 145451865620627255994423794806361945850102334492275287211990843130611262300325394155606209563629002979721763569246337055099205285966131382849487976636227400055027719431442836443745777646690258980901740967619221322690271390697990423858822096771947480132916085867119261426118850706911431405002249943301157526101
    q = 122591103187001941531981116626088517272837042666009702021914587210570496297428345381271558003032110048175099726506196684469849960666768621613342548101515187188959282532721988792848139744093597910688850693268776677926655073601748929692187744665915785021760858938755364467804579756425006253062877958984156956259
    N = p * q
    e = 65537
    m = int.from_bytes(b"lactf{1s_r4bin_g0d?}", "big")
    ct = pow(m, e, N)
    print(f"ct = {ct}")
    print(f"N = {N}")
    print(f"e = {e}")
    while 1:
        x = int(input("What do you want to ask? > "))
        ad = advice(x, p, q)
        print(ad)

if __name__ == "__main__":
    main()
