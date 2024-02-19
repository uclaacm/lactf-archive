import random
from pwn import *

context.log_level = "error"
context.arch = "amd64"

def rand_addr():
    return random.getrandbits(32) << 12

def deobfuscate(addr, val):
    mask = (1 << 64) - 1
    val = (val - 0xc200c6d3267c529d) & mask
    val = (val * pow(0xb216cb3c48c1e693, -1, 1 << 64)) & mask
    return val ^ addr

def align(x):
    if x % 0x1000 != 0:
        return x + (0x1000 - x % 0x1000)
    return x

random.seed(31337)
num_nodes = 300
flag = b"lactf{i_l0v3_l1nux_elf_p4rs1ng}"

dud_nodes = num_nodes - len(flag) - 1

node_addrs = []
for i in range(num_nodes):
    if i % 5 == 0:
        cur_addr = rand_addr()
    else:
        cur_addr += 0x5f * 8
    node_addrs.append(cur_addr)

start_node = node_addrs[dud_nodes]
end_node = node_addrs[-1]
entrypoint = rand_addr()

assert entrypoint not in node_addrs
assert len(set(node_addrs)) == len(node_addrs)

nodes = []
for _ in range(dud_nodes):
    nodes.append([random.randrange(dud_nodes) for _ in range(0x20, 0x7f)])
for (i, c) in enumerate(flag):
    nodes.append([random.randrange(dud_nodes) if x != c else dud_nodes + i + 1 for x in range(0x20, 0x7f)])
nodes.append([random.randrange(dud_nodes) for _ in range(0x20, 0x7f)])

segs = {}
for (addr, node) in zip(node_addrs, nodes):
    base_addr = addr & ~0xfff
    offset = addr & 0xfff
    if base_addr not in segs:
        segs[base_addr] = bytearray(random.randbytes(0x1000))
    node_enc = b""
    for i in range(0x5f):
        # print(hex(addr + i * 8), hex(node_addrs[node[i]]), hex(deobfuscate(addr + i * 8, node_addrs[node[i]])))
        node_enc += p64(deobfuscate(addr + i * 8, node_addrs[node[i]]))
    segs[base_addr][offset:offset + len(node_enc)] = node_enc

program = asm(f"""
    mov eax, SYS_ptrace
    syscall
    test eax, eax
    jnz .exit
    /* arg checking */
    pop rsi
    cmp rsi, 2
    jl .no
    pop rsi
    pop rsi
    /* graph traversal loop */
    mov rbx, {hex(start_node)}
    .loop:
        movzx eax, byte ptr [rsi]
        cmp al, 0xa
        je .fin
        cmp al, 0
        je .fin
        cmp al, 0x7e
        ja .no
        sub al, 0x20
        jc .no
        lea rdx, [rbx + rax * 8]
        mov rbx, [rdx]
        xor rbx, rdx
        mov r8, 0xb216cb3c48c1e693
        imul rbx, r8
        mov r8, 0xc200c6d3267c529d
        add rbx, r8
        inc rsi
        jmp .loop
    /* check correctness */
    .fin:
        mov rcx, {hex(end_node)}
        cmp rbx, rcx
        je .yes
        .no:
            push 0xa6f6e
            mov edx, 3
            jmp .endprint
        .yes:
            push 0xa736579
            mov edx, 4
    .endprint:
        mov eax, SYS_write
        mov edi, 1
        mov rsi, rsp
        syscall
    /* exit */
    .exit:
    mov eax, SYS_exit
    xor edi, edi
    syscall
""")

if len(program) % 8 != 0:
    program += random.randbytes(8 - len(program) % 8)

eprogram = b""
for i in range(0, len(program), 8):
    eprogram += int.to_bytes(int.from_bytes(program[i:i + 8], "little") ^ 0x8ffc28c0c4a451f7, 8, "little")

decoder = """
lea rsi, [rip + {}]
mov rcx, {}
mov r8, 0x8ffc28c0c4a451f7
.loop:
    xor [rsi], r8
    add rsi, 8
    loop .loop
jmp .end + {}
.end:
"""

entrypad = 0x137
decoderpad = 0x413
tmp = asm(decoder.format(0, 0, decoderpad))
segs[entrypoint] = random.randbytes(entrypad) + asm(decoder.format(len(tmp) - 7 + decoderpad, len(program) // 8, decoderpad)) + random.randbytes(decoderpad) + eprogram
assert len(segs) <= 73

segs = list(segs.items())
random.shuffle(segs)

elf = b""
elf += b"\x7fELF" # header
elf += bytes([1, 2]) # 32-bit big endian (unchecked)
elf += random.randbytes(10) # padding
elf += p16(2) # executable file
elf += p16(0x3e) # amd64
elf += random.randbytes(4) # padding
elf += p64(entrypoint + entrypad) # entrypoint
elf += p64(0x3a) # pheader offset
elf += random.randbytes(14) # padding
elf += p16(0x38) # pheader size
elf += p16(len(segs)) # pheader count

header_size = align(len(elf) + 0x38 * len(segs))

cur_offset = header_size
for (addr, seg) in segs:
    aligned_len = align(len(seg))
    elf += p32(1) # loadable segment
    elf += p32(random.getrandbits(32) | 7) # rwx segment
    elf += p64(cur_offset) # file offset
    elf += p64(addr) # vaddr
    elf += random.randbytes(8) # padding
    elf += p64(aligned_len) * 2 # file size and mem size
    elf += random.randbytes(8) # padding
    cur_offset += aligned_len

for (_, seg) in segs:
    if len(elf) % 0x1000 != 0:
        elf += random.randbytes(0x1000 - len(elf) % 0x1000)
    elf += seg

with open("technically_correct", "wb") as f:
    f.write(elf)

# print(hexdump(elf))
