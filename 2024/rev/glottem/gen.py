import random

alpha = "abcdefghijklmnopqrstuvwxyz_"
flag = "solve_one_get_two_free_deal"
N = 27

assert len(alpha) == N

random.seed(13371337)

def gen_random():
    return 10 + random.randrange(5) + random.randrange(4)

# literally only using numpy for tuple indexing
edges = [[[gen_random() for _ in range(N)] for _ in range(N)] for _ in range(N - 1)]

# insert the flag as the shortest path
for i in range(len(flag) - 1):
    l = edges[i][alpha.index(flag[i])]
    j = alpha.index(flag[i + 1])
    l[j] = min(min(r) for r in edges[i])

pred = {}
dist = {(0, i): 0 for i in range(N)}
frontier = {(0, i) for i in range(N)}

while frontier:
    new_frontier = set()
    for i, j in frontier:
        cur_d = dist[(i, j)]
        for k in range(N):
            new_d = dist[(i, j)] + edges[i][j][k]
            d = dist.get((i + 1, k))
            if d is None or new_d < d:
                dist[(i + 1, k)] = new_d
                pred[(i + 1, k)] = [(i, j)]
                if i + 1 < N - 1:
                    new_frontier.add((i + 1, k))
            elif new_d == d:
                pred[(i + 1, k)].append((i, j))
    frontier = new_frontier


def backwalk(k):
    if k[0] == 0:
        return [[k]]
    if k not in pred:
        return []
    ret = []
    for v in pred[k]:
        ret += [x + [k] for x in backwalk(v)]
    return ret


mindist = min(dist[(N - 1, i)] for i in range(N))
walks = []
for i in range(N):
    if dist[(N - 1, i)] == mindist:
        walks += ["".join(alpha[x[1]] for x in r) for r in backwalk((N - 1, i))]

chosen = flag
print("chosen:", chosen)
assert chosen in walks
print("edges:", str(edges).replace(" ", ""))
cksum = 0
for c in b"lactf{" + chosen.encode() + b"}":
    cksum = (cksum * 31 + c) % 93097
print("walks:", len(walks))
print("mindist:", mindist)
print("cksum:", cksum)
for w in walks:
    if w == chosen:
        continue
    cur = 0
    for c in b"lactf{" + w.encode() + b"}":
        cur = (cur * 31 + c) % 93097
    assert cur != cksum
