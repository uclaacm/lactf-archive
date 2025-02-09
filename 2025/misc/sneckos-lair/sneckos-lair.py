#!/usr/local/bin/python3
inp = input("Code: ")

if len(inp) >= 150:
    print("Too long!")
    exit(1)

banned = "@:{}[]|&,ifb"
if c := next((c for c in inp if not c.isascii() or c in banned), None):
    print(f"Banned char {c}")
    exit(1)

if inp.count("__") > 6 or inp.count("(") > 1 or inp.count(")") > 1:
    print("Too much cheating!")
    exit(1)

exec(inp, {"__builtins__": None})
