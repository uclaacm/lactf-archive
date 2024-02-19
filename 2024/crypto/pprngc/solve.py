from pwn import *

conn = remote("chall.lac.tf", 31173)

def compute_output_bit(state, pred):
    return bin((state & pred)).count("1") % 2

_ = conn.recvline().decode()
first_state = int(conn.recvline().decode().split(" ")[-1])
states = [first_state]
for i in range(15):
    conn.sendlineafter("guess seed ".encode(), "2".encode())
    conn.sendlineafter("Gimme a number! ".encode(), str(states[-1]).encode())
    next_state = int(conn.recvline().decode().strip())
    states.append(next_state)

conn.sendlineafter("guess seed ".encode(), "1".encode())
prefix = conn.recvline().decode().strip()[:16]

one_preds = [2 ** i for i in range(16)]
streams_for_one_preds = []
for i in range(16):
    cur_pred = one_preds[i]
    bit_stream = ""
    for j in range(len(states)):
        bit_stream += str(compute_output_bit(states[j], cur_pred))
    bit_stream = bit_stream[::-1]
    bit_stream = prefix + bit_stream
    streams_for_one_preds.append(bit_stream)

seed_bits = []
for i in range(16):
    conn.sendlineafter("guess seed ".encode(), "3".encode())
    conn.sendlineafter("Gimme the bitstream you want to predict! ".encode(), str(streams_for_one_preds[i]).encode())
    conn.sendlineafter("Oh, can you also give a predicate with that? ".encode(), str(one_preds[i]).encode())
    seed_bits.append(conn.recvline().decode().strip())

seed_bits = seed_bits[::-1]
seed = int("".join(seed_bits), 2)

conn.sendlineafter("guess seed ".encode(), "4".encode())
conn.sendlineafter("Well, let's see it! ".encode(), str(seed).encode())

conn.interactive()
