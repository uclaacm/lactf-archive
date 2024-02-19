#!/usr/bin/env python3

from pwn import *
from sympy import isprime
import string
import base64
import math


class LCG:

    def __init__(self,a,c,m,seed):
        self.a = a
        self.c = c
        self.m = m
        self.state = seed

    def next(self):
        s = self.state
        self.state = (self.a * self.state + self.c) % self.m
        return s

def decrypt_msg(msg, params):
    a, c, m, seed = params
    L = LCG(a, c, m, seed)
    l = len(msg)
    permutation = []
    chosen_nums = set()
    while len(permutation) < l:
        thing = int(L.next())
        pos = thing % l
        if pos not in chosen_nums:
            permutation.append(pos)
            chosen_nums.add(pos)
    out = [0]*l
    for i,p in enumerate(permutation):
        out[p] = msg[i]
    output = base64.b64decode(''.join(out))
    return output



def conn():
    if args.LOCAL:
        r = process(["shuffler.py"])
    else:
        r = remote("chall.lac.tf", 31172r)

    return r

def get_primes(length):
    product = 1
    factors = []
    #we want factors to be large, but we dont want a factor larger than # of ascii printables (100)
    for i in range(min(length,89),3,-1):
        if isprime(i):
            product*=i
            factors.append(i)
    return factors

def get_msg(length):
    return string.printable[0:length]

def determine_states(msg,transposed):
    states = []
    for i in range(6):
        states.append(msg.index(transposed[i]))
    return states

def main():
    while True:
        r = conn()
        r.recvuntil(b"> ")
        r.sendline(b"2")
        data = r.recvuntil(b"> ")
        enc_message = data.split(b"\n")[0].split()[-1].decode()
        factors = get_primes(len(enc_message))
        final_factors = []
        outputs = []
        prod = 1
        i=0
        while prod < (2**64):
            factor = factors[i]
            r.sendline(b"1")
            msg = get_msg(factor)
            r.recvline()
            r.sendline(msg.encode())
            shuffled = r.recvline().strip().decode()
            if shuffled == "Are you trying to hack me?":
                r.recvuntil(b"> ")
                i+=1
                continue
            shuffled = shuffled.split()[-1]
            states = determine_states(msg,shuffled)
            outputs.append(states)
            r.recvuntil(b"> ")
            prod*=factor
            i+=1
            final_factors.append(factor)

        r.close()

        Xs = []
        #will work a nontrivial amount of times, keep running the script until it does
        for i in range(6):
            initial_state = crt([j[i] for j in outputs],final_factors)
            Xs.append(initial_state)
        
        Ys = []
        Zs = []
        for i in range(5):
            Ys.append(Xs[i+1]-Xs[i])
        for i in range(3):
            Zs.append(Ys[i+2]*Ys[i] - Ys[i+1]*Ys[i+1])
        m = math.gcd(*Zs)
        if (m < 2**32):
            print("continuing")
            continue
        else:
            while (m > (2 ** 64)):
                if m % 2 == 0:
                    m //=2
                elif m % 3 == 0:
                    m //=3
            print(m)
        a = ((Xs[2] - Xs[3]) * pow(Xs[1] - Xs[2],-1,m)) % m
        b = (Xs[1] - a*Xs[0]) % m

        
        msg = decrypt_msg(enc_message,(a,b,m,Xs[0]))
        print(msg)
        exit(0)




if __name__ == "__main__":
    main()





