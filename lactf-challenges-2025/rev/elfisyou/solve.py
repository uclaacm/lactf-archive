#!/usr/bin/env python3

from pwn import *

serv = "localhost"
port = 5000

def conn():
    if args.REMOTE:
        r = remote(serv, port)
    else:
        r = process(["python3", "./chal.py"])
    return r

r = conn()

def main():
    inp = open("solution", "r")
    for c in inp:
        r.send(c)
    r.send("x")
    r.interactive()

if __name__ == "__main__":
    main()
