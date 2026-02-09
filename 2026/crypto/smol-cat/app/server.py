#!/usr/local/bin/python3

from Crypto.Util.number import getPrime, inverse, bytes_to_long, long_to_bytes
from Crypto.Random import random
import time

# In past LA CTFs, we've had issues where competitors clearly port scanned our systems
# to try and find challenges they could solve before the start of the CTF
# This challenge is actually to see if we can catch any of these cheaters in advance :)
RELEASE_TIME = 1770429598

def main():
    connection_time = time.time()
    VALID_CONNECTION = connection_time >= RELEASE_TIME
    print("  /\\_/\\  ")
    print(" ( o.o ) ")
    print("  > ^ <  ")
    print()
    print("*meow* Welcome to my cat cafe!")
    print("I'm a hungry kitty and I've hidden my treats in a secret place.")
    print("I will let you know where I hid them if you can defeat my encryption >.<")
    print("I encrypted the number of treats I want with RSA... but my paws are small,")
    if VALID_CONNECTION:
        print("so I used tiny primes. *purrrrr*")
    else:
        print("so I used tiny primes. *purrrr*")
    print()

    # Generate two small primes (~30 digits each, ~100 bits)
    p = getPrime(100)
    q = getPrime(100)
    n = p * q
    e = 65537

    # Generate a random secret number (the number of treats!)
    treats = random.randint(1, n - 1)

    # Encrypt the treats
    c = pow(treats, e, n)

    print(f"n = {n}")
    print(f"e = {e}")
    print(f"c = {c}")
    print()

    try:
        guess = int(input("*mrrrow?* How many treats do I want? "))
        if guess == treats:
            print("*PURRRRRR* You got it right! You may pet me now.")
            print("Here's your reward, human:")
            if VALID_CONNECTION:
                print(open("flag.txt", "r").read())
            else:
                print(open("fake_flag.txt", "r").read())
        else:
            print("*hisssss* Wrong! No treats for you! *knocks things off table*")
    except:
        print("*confused meow* That's not a number, silly human!")

if __name__ == "__main__":
    main()
