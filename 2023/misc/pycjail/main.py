#!/usr/local/bin/python3
import opcode
import inspect


def f():
    pass


banned = ["IMPORT_NAME", "MAKE_FUNCTION"]
for k in opcode.opmap:
    if (
        ("LOAD" in k and k != "LOAD_CONST")
        or "STORE" in k
        or "DELETE" in k
        or "JUMP" in k
    ):
        banned.append(k)
banned = {opcode.opmap[x] for x in banned}

consts = tuple(input("consts: ").split(","))
names = tuple(input("names: ").split(","))
code = bytes.fromhex(input("code: "))
if len(consts) > 3:
    print("too many consts >:(")
elif len(names) > 4:
    print("too many names >:(")
elif len(code) > 30:
    print("too much code >:(")
elif len(code) % 2 != 0:
    print("invalid code >:(")
elif any(code[i] in banned for i in range(0, len(code), 2)):
    print("banned opcode >:(")
elif any(code[i] > 3 for i in range(1, len(code), 2)):
    print("I never learned how to count past 3 >:(")
else:
    f.__code__ = f.__code__.replace(
        co_stacksize=10,
        co_consts=consts,
        co_names=names,
        co_code=code,
    )
    print("here goes!")
    frame = inspect.currentframe()
    p = print
    r = repr
    for k in list(frame.f_globals):
        if k not in ("p", "r", "f"):
            del frame.f_globals[k]
    p(r(f()))
