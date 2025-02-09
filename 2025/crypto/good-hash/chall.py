#!/usr/local/bin/python3
from Crypto.Cipher import AES
import os

FLAG = "lactf{g_d03s_n0t_s7and_f0r_g00d}"

if __name__ == "__main__":
    print("Can you guess the secret?")
    secret = os.urandom(16)
    key  = os.urandom(16)
    iv = os.urandom(12)
    for attempt in range(4):
        choice = input().strip()
        if choice == "1":
            leftextend = bytes.fromhex(input("input > "))
            rightextend = bytes.fromhex(input("input > "))
            cipher = AES.new(key, AES.MODE_GCM, nonce=iv)
            _, mac = cipher.encrypt_and_digest(leftextend + secret + rightextend)
            print(mac.hex())
        if choice == "2":
            guess = bytes.fromhex(input("guess > "))
            if guess == secret:
                print(FLAG)
            else:
                print("WRONG !!")
                exit()
    print("You're out of time!")

