import string

import requests
from tqdm import tqdm

base = "http://localhost:5000"
base = "https://whack-a-mole.chall.lac.tf/"
url = lambda end: f"{base.rstrip('/')}{end}"

alpha = string.ascii_letters + string.digits + "{}_"
rng = "q3aUrDpfmRzMzABTCILvXCOA3Us"

s = requests.Session()


def get_len(guess):
    r = s.post(
        url("/login"),
        data={"username": guess, "funny": "0"},
        allow_redirects=False,
    )
    sess = s.cookies["session"]
    return len(sess)


prefix = "lac"
block_size = 16
padrange = [*range(block_size)]
while "}" not in prefix:
    for pad in [*padrange]:
        owos = []
        for ch in alpha:
            guess = (prefix + ch) * block_size
            guess = guess + rng[:pad]
            owos.append((get_len(guess), ch))
        owos.sort()
        if owos[0][0] != owos[1][0]:
            prefix += owos[0][1]
            padrange.sort(key=lambda x: -1 if x == pad else x)
            break
    print(prefix)
