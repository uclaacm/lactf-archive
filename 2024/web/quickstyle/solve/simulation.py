import string
import random as rng
from tqdm import tqdm

alphabet = string.ascii_letters + string.digits
three_sample_len = len(alphabet) - 10
flag_len = 80
ntrials = 100

flag = "".join(rng.choice(alphabet) for _ in range(flag_len))

def combine(order):
    return "".join(o[0] for o in order) + order[-1][1:]

def get(threecombos, twocombos, start, end):
    """
    Original I was working on.

    It kinda sucks lol.
    """
    return twoget(threecombos, twocombos, start, end)
    combos = set(threecombos)
    order = [start]

    l = 0
    n = 1
    while len(order) != l and len(order) < flag_len:
        l = len(order)
        possible = [c for c in combos if c.startswith(order[-1][-2:])]
        if not possible and len(order) == flag_len - 1:
            break

        if len(possible) == 1:
            order.append(possible[0][1:])
            combos.remove(possible[0])
            continue

        possible = [c for c in twocombos if c[0] == order[-1][-1]]
        if len(possible) < 1:
            break
        n *= len(possible)
        order.append(possible[0])
    return combine(order) == flag


def twoget(threecombos, twocombos, start, end):
    """
    Other implementation I was working on.

    It's basically just use two's and if a three matches then pog.

    It seems to have 1%% chance of working???
    """
    order = [start]
    three = set(threecombos)
    two = set(twocombos)
    if len(two) != flag_len - 1:
        return False

    two.remove(start)

    edges = dict()
    for c in two:
        edges[c[0]] = edges.get(c[0], [])
        edges[c[0]].append(c)

    search = 0

    def dfs():
        nonlocal search
        search += 1
        if search > 1000000:
            return False
        if len(two) == 0:
            return True
        ee = edges.get(order[-1][1], [])
        possible = [e for e in ee if e in two]
        rng.shuffle(possible)
        possible.sort(key=lambda e: (
            2 * ((order[-1] + e[1]).lower() in three) +
            rng.random()
        ), reverse=True)

        for e in possible:
            # if (order[-1] + e[1]) in three:
            #     print("owo")
            two.remove(e)
            order.append(e)
            if dfs():
                # print(order, three)
                return True
            order.pop()
            two.add(e)
        return False

    dfs()
    return combine(order) == flag


success = 0
total = 0
for _ in tqdm(range(ntrials)):
    # threealpha = set(rng.sample(alphabet, three_sample_len))
    threealpha = set(string.ascii_lowercase + string.digits)

    flag = "".join(rng.choice(alphabet) for _ in range(flag_len))

    three_obs = set()
    for i, j, k in zip(flag, flag[1:], flag[2:]):
        if all(x.lower() in threealpha for x in [i, j, k]):
            three_obs.add((i + j + k).lower())

        # if all(x in threealpha for x in [i, j, k]):
        #     three_obs.add(i + j + k)
    two_obs = set()
    for i, j in zip(flag, flag[1:]):
        two_obs.add(i + j)
    start = flag[:2]
    end = flag[-2:]

    success += (x := get(three_obs, two_obs, start, end))
    total += 1

    if x:
        print(flag)


print(success, "successful")
print(success / total)
