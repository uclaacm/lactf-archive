import Crypto.Util.number as cun

while True:
    p = 4
    for i in range(16):
        p *= cun.getPrime(16)
    if cun.isPrime(p - 1) and (p) % 4 == 0:
        print(p-1)
        break