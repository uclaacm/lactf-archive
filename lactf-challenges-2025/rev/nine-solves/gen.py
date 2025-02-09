def collatz(n, cache={1: 0}):
    cache[1] = 0
    if n in cache:
        return cache[n]
    i = 0
    while n != 1:
        i += 1
        if n % 2 == 0:
            n //= 2
        else:
            n = 3 * n + 1
        if n in cache:
            return i + cache[n]

s = {}
for i in range(0x20, 0x7f):
    s.setdefault(collatz(i), []).append(i)

print(s)

print(", ".join(str(collatz(n)) for n in b"BigyaP"))
