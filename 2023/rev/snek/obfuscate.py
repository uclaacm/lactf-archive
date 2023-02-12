import snekimpl
import pickle
from string import printable

cod = snekimpl.main.__code__

def pack(n):
    return int.to_bytes(n, 4, "little")

def encstring(s):
    ret = pickle.GLOBAL + b"builtins\nstr.join\n"
    ret += pickle.UNICODE + b"\n"
    ret += pickle.MARK
    for c in s:
        ret += pickle.GET + str(printable.index(c)).encode() + b"\n"
    ret += pickle.LIST
    ret += pickle.TUPLE2 + pickle.REDUCE
    return ret

def imp(m, n):
    return encstring(m) + encstring(n) + pickle.STACK_GLOBAL

p = pickle.PROTO + b"\x05"

for c in printable:
    p += pickle.BINUNICODE + pack(1) + c.encode()
    p += pickle.MEMOIZE
    p += pickle.POP

p += imp("pickle", "encode_long")
p += pickle.EMPTY_DICT
p += pickle.MARK
p += encstring("__code__")
p += imp("pickle", "encode_long.__code__.__class__")
p += pickle.MARK
# argcount
p += pickle.BININT1 + b"\x00"
# posonlyargcount
p += pickle.DUP
# kwonlyargcount
p += pickle.DUP
# nlocals
p += pickle.BININT1 + bytes([cod.co_nlocals])
# stacksize
p += pickle.INT + str(cod.co_stacksize).encode() + b"\n"
# flags
p += pickle.BININT1 + bytes([cod.co_flags])
# codestring
p += imp("builtins", "bytes")
p += imp("builtins", "map")
p += imp("functools", "partial")
p += imp("operator", "and_")
p += pickle.BININT1 + bytes([0xff])
p += pickle.TUPLE2 + pickle.REDUCE
p += imp("itertools", "starmap")
p += imp("operator", "xor")
p += imp("builtins", "enumerate")
p += pickle.BINBYTES + pack(len(cod.co_code)) + bytes((i ^ x) & 0xff for (i, x) in enumerate(cod.co_code))
p += pickle.TUPLE1 + pickle.REDUCE
p += pickle.TUPLE2 + pickle.REDUCE
p += pickle.TUPLE2 + pickle.REDUCE
p += pickle.TUPLE1 + pickle.REDUCE
# constants
const_pick = pickle.dumps(cod.co_consts)
p += imp("pickle", "loads")
p += imp("builtins", "bytes")
p += imp("builtins", "reversed")
p += pickle.BINBYTES + pack(len(const_pick)) + const_pick[::-1]
p += pickle.TUPLE1 + pickle.REDUCE
p += pickle.TUPLE1 + pickle.REDUCE
p += pickle.TUPLE1 + pickle.REDUCE
# names
p += pickle.MARK

p += b"".join(encstring(x) for x in cod.co_names)
p += pickle.TUPLE
# varnames
p += pickle.MARK
p += b"".join(pickle.UNICODE + b"snek\n" for _ in cod.co_varnames)
p += pickle.TUPLE
# filename
p += pickle.UNICODE + b"snek\n"
# name
p += pickle.DUP
# firstlineno
p += pickle.INT + b"1337\n"
# linetable
p += pickle.BINBYTES + pack(4) + b"snek"

p += pickle.TUPLE
p += pickle.REDUCE
p += pickle.DICT
p += pickle.TUPLE2
p += pickle.BUILD
p += pickle.EMPTY_TUPLE
p += pickle.REDUCE
p += pickle.STOP

with open("snek.py", "w") as f:
    f.write(f"#!/usr/local/bin/python3\n# hey look a one liner!\n__import__('pickle').loads({p})\n")