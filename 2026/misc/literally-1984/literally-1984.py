#!/usr/local/bin/python3
import os
import concurrent.interpreters

inp = input("1984> ")
if len(inp) >= 67 or not all(0x20 <= ord(c) < 0x7f for c in inp) or any(c in " _.\\\"'{}#=" for c in inp):
    print("literally 1984")
    exit(1)

interp = concurrent.interpreters.create()
interp.call(exec, """
def f():
    import sys, os
    sys.stdin.close()
    sys.stderr.close()
    evts = 0
    ex = os._exit
    def g(evt, *args):
        nonlocal evts
        evts += 1
        if evts > 3:
            print("literally 1984", flush=True)
            ex(1)
    sys.addaudithook(g)
f()
del f
""")
interp.call(eval, f"print({inp})")
interp.close()
