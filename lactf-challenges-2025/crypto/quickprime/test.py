from Crypto.Util.number import isPrime
import binascii
from secrets import randbits
import matplotlib.pyplot as plt
from tqdm import tqdm


class LCG:

    def __init__(self, a: int, c: int, m: int, seed: int):
        self.a = a
        self.c = c
        self.m = m
        self.state = seed

    def next(self):
        self.state = (self.a * self.state + self.c) % self.m
        return self.state


while True:
    a = randbits(512)
    c = randbits(512)
    m = 1 << 512
    seed = randbits(512)
    initial_iters = randbits(16)
    # https://en.wikipedia.org/wiki/Linear_congruential_generator#m_a_power_of_2,_c_%E2%89%A0_0
    if (c != 0 and c % 2 == 1) and (a % 4 == 1):
        print(f"LCG coefficients:\na={a}\nc={c}\nm={m}")
        break

L = LCG(a, c, m, seed)
for i in range(initial_iters):
    L.next()

distribution = []
for i in tqdm(range(1000)):
    num_trials = 0
    primes = []
    while len(primes) < 2:
        if len(primes) == 1:
            num_trials += 1
        test = L.next()
        if isPrime(test):
            primes.append(test)
    distribution.append(num_trials)

plt.hist(distribution, bins=30)
plt.ylabel("Number")
plt.xlabel("Data (# of trials needed to generate 2 primes)")
plt.show()
