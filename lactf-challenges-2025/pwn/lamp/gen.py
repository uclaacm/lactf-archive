#!/usr/bin/env python3

from pwn import *

context.arch = "amd64"

class Ehdr():
    def __init__(self):
        self.ei_class = 0xde
        self.ei_data = 2
        self.ei_version = 0xf9
        self.ei_osabi = 0x26
        self.ei_abiversion = 0x11
        self.ei_pad = b"./lamp\x00"
        self.e_type = 2
        self.e_machine = 0x3e
        self.e_version = 0x52c8f29a
        self.e_entry = 0
        self.e_phoff = 0x40-6
        self.e_shoff = 0
        self.e_flags = 0
        self.e_ehsize = 0
        self.e_phentsize = 0x38
        self.e_phnum = 1
        self.e_shentsize = 1
        self.e_shnum = 0
        self.e_shstrndx = 0xdc23
    def __len__(self): return 0x40
    def create(self):
        e = b"\x7fELF"
        e += p8(self.ei_class)
        e += p8(self.ei_data)
        e += p8(self.ei_version)
        e += p8(self.ei_osabi)
        e += p8(self.ei_abiversion)
        e += self.ei_pad
        e += p16(self.e_type)
        e += p16(self.e_machine)
        e += p32(self.e_version)
        e += p64(self.e_entry)
        e += p64(self.e_phoff)
        e += p64(self.e_shoff)
        e += p32(self.e_flags)
        e += p16(self.e_ehsize)
        e += p16(self.e_phentsize)
        e += p16(self.e_phnum)
        e += p16(self.e_shentsize)
        e += p16(self.e_shnum)
        e += p16(self.e_shstrndx)
        assert len(e) == 0x40
        return e

class Phdr():
    def __init__(self, p_type):
        self.p_type = p_type
        self.p_flags = 5
        self.p_offset = 0
        self.p_vaddr = 0x10000
        self.p_paddr = 0x10000
        self.p_filesz = 0x10000
        self.p_memsz = 0x10000
        self.p_align = 0
    def __len__(self): return 0x38
    def create(self):
        e = p32(self.p_type)
        e += p32(self.p_flags)
        e += p64(self.p_offset)
        e += p64(self.p_vaddr)
        e += p64(self.p_paddr)
        e += p64(self.p_filesz)
        e += p64(self.p_memsz)
        e += p64(self.p_align)
        assert len(e) == 0x38
        return e

def main():
    e = Ehdr()
    p = Phdr(1)
    p1 = asm("""
        mov edi, 0x10009
        mov edx, 0x10052
        push 0x3b
        jmp $-0x20
    """)
    p2 = asm("""
        pop rax
        syscall
    """)
    e.e_entry = 0x10028
    e.e_shoff = u64(p1[:8])
    e.e_flags = u32(p1[8:12])
    e.e_ehsize = u16(p1[12:])
    e.e_version = u32(p2.ljust(4, b"\x00"))
    out = e.create() + p.create()[6:]
    print(len(out))
    f = open("./run", "wb")
    f.write(out)
    f.close()
    os.chmod("./run", 0o777)

if __name__ == "__main__":
    main()
