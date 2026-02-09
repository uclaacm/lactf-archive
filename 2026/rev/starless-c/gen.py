import random
from textwrap import dedent
from pwn import *
import functools

context.log_level = "error"
context.arch = "amd64"
random.seed(31337)

orig_asm = asm
@functools.cache
def asm(s):
    ret = orig_asm(s)
    # print("assembled:")
    # print(disasm(ret))
    return ret

def align(x):
    if x % 0x1000 != 0:
        return x + (0x1000 - x % 0x1000)
    return x


def write_str(msg):
    chunks = [int.from_bytes(msg[i : i + 8], "little") for i in range(0, len(msg), 8)][
        ::-1
    ]
    prep = "\n".join(f"mov rax, {c}\npush rax" for c in chunks)
    return dedent(
        f"""
        {prep}
        mov eax, 1
        mov edi, 1
        mov rsi, rsp
        mov edx, {len(msg)}
        syscall
        """
    )


segs = {}

welcome = b"There is a flag in the binary.\n  (The flag is a metaphor but also still a flag.)\n  (The binary could rightly be considered a gimmick.)\n"
goodbye = b"And so the son of the fortune-teller does not find his way to the Starless C. Not yet.\n"
puzzle = """
########
#..#####
#.....##
#oo.oo##
#..#o..#
#......#
########
""".strip().split("\n")
width = len(puzzle[0])

start = (1, 1)
goals = [(1, 2), (2, 2), (3, 2), (4, 1), (4, 2)]
entrypoint = 0x13370000
winpoint = 0x42069000

puzz_start = 0x67670000
segfault = asm("xor eax, eax; mov [rax], al")
for i, r in enumerate(puzzle):
    for j, v in enumerate(r):
        cur = puzz_start + (i * width + j) * 0x1000
        if v == "#":
            data = b""
            perms = 0
        elif v in ".o":
            if v == ".":
                prefix1 = segfault
            else:
                prefix1 = b"\x90" * 4
            try:
                g = goals.index((i, j))
                if g < len(goals) - 1:
                    (a, b) = goals[g + 1]
                    j = puzz_start + (a * width + b) * 0x1000
                else:
                    j = winpoint
                prefix2 = asm(f"jmp . + {j - (cur + 4)}")
            except ValueError:
                prefix2 = segfault
            data = prefix1 + prefix2.ljust(8, b"\xcc") + asm(
                f"""
                .start:
                xor eax, eax
                xor edi, edi
                mov rsi, rsp
                mov edx, 1
                syscall
                mov al, [rsi]
                cmp al, 0xa
                je .start
                cmp al, 'w'
                je .up
                cmp al, 's'
                je .down
                cmp al, 'a'
                je .left
                cmp al, 'd'
                je .right
                cmp al, 'f'
                je .fin
                xor eax, eax; mov [rax], al
                .up:
                mov eax, [rip + .start - 12 - {width * 0x1000}]
                cmp al, 0x90
                jne .up_move
                mov dword ptr [rip + .start - 12 - {width * 0x1000}], {int.from_bytes(segfault, "little")}
                mov [rip + .start - 12 - {2 * width * 0x1000}], eax
                .up_move:
                jmp .start - {width * 0x1000}
                .down:
                mov eax, [rip + .start - 12 + {width * 0x1000}]
                cmp al, 0x90
                jne .down_move
                mov dword ptr [rip + .start - 12 + {width * 0x1000}], {int.from_bytes(segfault, "little")}
                mov [rip + .start - 12 + {2 * width * 0x1000}], eax
                .down_move:
                jmp .start + {width * 0x1000}
                .left:
                mov eax, [rip + .start - 12 - 0x1000]
                cmp al, 0x90
                jne .left_move
                mov dword ptr [rip + .start - 12 - 0x1000], {int.from_bytes(segfault, "little")}
                mov [rip + .start - 12 - 0x2000], eax
                .left_move:
                jmp .start - 0x1000
                .right:
                mov eax, [rip + .start - 12 + 0x1000]
                cmp al, 0x90
                jne .right_move
                mov dword ptr [rip + .start - 12 + 0x1000], {int.from_bytes(segfault, "little")}
                mov [rip + .start - 12 + 0x2000], eax
                .right_move:
                jmp .start + 0x1000
                .fin:
                jmp .start + {puzz_start + (goals[0][0] * width + goals[0][1]) * 0x1000 - (cur + 12)}
                """
            )
            perms = 7
        else:
            raise ValueError("wtf")
        segs[cur] = (data, perms)

entry_routine = asm(
    f"""
    .start:
    {write_str(welcome)}
    sub rsp, 32
    mov rax, {entrypoint} + .handle_segfault - .start
    mov [rsp], rax
    mov byte ptr [rsp+11], 4
    mov eax, 13
    mov edi, 11
    mov rsi, rsp
    xor edx, edx
    mov r10d, 8
    syscall
    add rsp, 32
    jmp .start + {puzz_start + (start[0] * width + start[1]) * 0x1000 + 12 - entrypoint}
    .handle_segfault:
    {write_str(goodbye)}
    mov eax, 60
    mov edi, 1
    syscall
    """
)

win_routine = asm(
    f"""
    {write_str(b"A person this far into a challenge has their path to follow. There were many paths, once, in a time that is past, lost many bytes and pages ago. Now there is only one path for you to choose. The path that leads to the flag.\n")}
    push 0
    mov rax, {int.from_bytes(b"flag.txt", "little")}
    push rax
    mov eax, 2
    mov rdi, rsp
    xor esi, esi
    syscall
    mov esi, eax
    mov eax, 40
    mov edi, 1
    xor edx, edx
    mov r10d, 256
    syscall
    mov eax, 60
    xor edi, edi
    syscall
    """
)

segs[entrypoint] = (entry_routine, 5)
segs[winpoint] = (win_routine, 5)

assert len(segs) <= 73

segs = list(segs.items())
random.shuffle(segs)

elf = b"".join(
    [
        b"\x7fELF",  # header
        bytes([2, 1, 1, 3, 0]),  # 64-bit little endian, ELF version 1 on Linux
        b"\x00" * 7,  # padding
        p16(2),  # executable file
        p16(0x3E),  # amd64
        p32(1),  # version again
        p64(entrypoint),  # entrypoint
        p64(0x40),  # pheader offset
        b"\x00" * 12,  # sheader offset and flags
        p16(0x40),  # eheader size
        p16(0x38),  # pheader size
        p16(len(segs)),  # pheader count
        b"\x00" * 6,  # sheader size, count, strtab index
    ]
)

header_size = align(len(elf) + 0x38 * len(segs))

cur_offset = header_size
for addr, (seg, perms) in segs:
    assert len(seg) <= 0x1000
    aligned_len = align(len(seg))
    elf += p32(1)  # loadable segment
    elf += p32(perms)  # perms
    elf += p64(cur_offset)  # file offset
    elf += p64(addr)  # vaddr
    elf += p64(addr)  # paddr
    elf += p64(aligned_len) * 2  # file size and mem size
    elf += random.randbytes(8)  # padding
    cur_offset += aligned_len

for _, (seg, _) in segs:
    elf += seg
    if len(elf) % 0x1000 != 0:
        elf += b"\xcc" * (0x1000 - len(elf) % 0x1000)

with open("starless_c", "wb") as f:
    f.write(elf)
