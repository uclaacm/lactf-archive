import hashlib
from pwn import *
import binascii
from tqdm import tqdm 
# Precompute PRG outputs and seeds
prg_dict = {}
prg_outputs = []

print("Precomputing PRG outputs...")
for s_int in tqdm(range(0x10000)):
    s = s_int.to_bytes(2, 'big')
    h = hashlib.new('sha3_256')
    h.update(s)
    prg = h.digest()[:4]
    prg_dict[prg] = s
    prg_outputs.append(prg)

prg_set = set(prg_dict.keys())

def xor_bytes(b1, b2):
    return bytes([a ^ b for a, b in zip(b1, b2)])

# Connect to the server
conn = remote('chall.lac.tf', 31173)  # Replace with actual server details

for _ in range(200):
    # Receive y
    conn.recvuntil(b'Here\'s y: ')
    y_hex = conn.recvline().strip().decode()
    y = bytes.fromhex(y_hex)
    
    # Find s0 and s1 such that PRG(s0) XOR PRG(s1) = y
    found = False
    s0 = None
    s1 = None
    com = None
    
    for prg0 in tqdm(prg_outputs):
        target = xor_bytes(prg0, y)
        if target in prg_set:
            s0 = prg_dict[prg0]
            s1 = prg_dict[target]
            com = prg0
            found = True
            break
    
    if not found:
        # Fallback: generate a random s0
        s0 = os.urandom(2)
        h = hashlib.new('sha3_256')
        h.update(s0)
        com = h.digest()[:4]
        s1 = None  # Will fail if server asks for beef
    
    # Send commitment
    conn.sendlineafter(b'What\'s your commitment (hex)?\n> ', com.hex().encode())
    
    # Determine server's choice
    line = conn.recvline()
    if b'chicken' in line:
        choice = 0
    elif b'beef' in line:
        choice = 1
    else:
        print("Unexpected line:", line)
        exit(1)
    
    # Send decommitment
    if choice == 0:
        decom = s0
    else:
        if s1 is not None:
            decom = s1
        else:
            decom = os.urandom(2)  # Will fail
    
    conn.sendlineafter(b'> ', decom.hex().encode())

# Get the final result
print(conn.recvall().decode())
conn.close()