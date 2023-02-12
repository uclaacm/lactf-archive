import requests
from urllib.parse import unquote
from base64 import b64encode, b64decode

URL = "https://zero-trust.lac.tf"

s = requests.Session()

s.get(URL)

[iv, auth_tag, ct] = [b64decode(x) for x in unquote(s.cookies["auth"]).split(".")]

cur = f'{{"tmpfile":"/tmp/pastestore/{"a" * 32}"}}'.encode()
des = f'{{"tmpfile":"/flag.txt","x":"{"a" * 32}"}}'.encode()
assert len(cur) == len(des) == len(ct)
new_ct = bytes(a ^ b ^ c for (a, b, c) in zip(cur, des, ct))

new_cookie = ".".join(b64encode(x).decode() for x in [iv, auth_tag, new_ct])

s.cookies["auth"] = new_cookie
print(s.get(URL).text)
