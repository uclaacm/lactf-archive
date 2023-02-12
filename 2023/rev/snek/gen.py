import random

dim = 20
boards = []
for _ in range(10):
    prev = {(0, 0)}
    while True:
        cur = set()
        for _ in range(50):
            while True:
                p = (random.randrange(dim), random.randrange(dim))
                if p not in cur and p not in prev:
                    break
            cur.add(p)
        break
    boards.append(cur)
    prev = cur

deet = [random.choice(list(x)) for x in boards]

accum = 0
for (a, b) in deet:
    accum ^= 1337
    accum *= dim ** 2
    accum += a * dim + b

print(f"cksum = {accum}")
print(f"boards = {boards}")
