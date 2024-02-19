# Note: you can easily solve this by hand but I wrote this for quick testing

import re

def vig_add(a,b):
    return chr(((ord(a) | (1 << 5)) - ord('a') + ((ord(b) | (1 << 5)) - ord('a')))%26 + ord('a'))

def vig_subtract(a,b):
    return chr(((ord(a) | (1 << 5)) - ord('a') - ((ord(b) | (1 << 5)) - ord('a')))%26 + ord('a'))

def get_vig_key(ct,pt):
    key = ''
    for c1,c2 in zip(ct,pt):
        key+=vig_subtract(c1,c2)
    return key

def dec(msg,key):
    pt = ''
    repeated_key = key * (len(msg)//len(key) + 1)
    for c1,c2 in zip(msg,repeated_key):
        pt+=vig_subtract(c1,c2)
    return pt

with open('ct.txt','r') as f:
    ct = f.read()
    ct = re.sub('[^A-Za-z]', '', ct)
with open('intro.txt','r') as f:
    known_plaintext = f.read()
    known_plaintext = re.sub('[^A-Za-z]', '', known_plaintext)
print(ct)
print('')
print(known_plaintext)
print()
known_key = get_vig_key(ct,known_plaintext)

KEY_LEN = 161
unknown_len = KEY_LEN - len(known_key)

remaining_pt = ''

for i in range(0,len(ct),KEY_LEN):
    segment = ct[i:min(len(ct),i+KEY_LEN)]
    if (i + len(known_key)) < len(ct):
        remaining_pt+=segment[len(known_key):]

print(unknown_len)
print(remaining_pt)
print(len(remaining_pt))
print(len(ct))
print(len(known_key))

#throw remaining_pt and unknown_len into https://www.dcode.fr/vigenere-cipher

remaining_key = "DBYENEVERGONNATELLALIEANDHURTYOUUHOPEYOUETJOYEDTHISSONA"
key = (known_key + remaining_key).lower()
print(key)

with open('out.txt','w') as f:
    msg = dec(ct,key)
    f.write(msg)
