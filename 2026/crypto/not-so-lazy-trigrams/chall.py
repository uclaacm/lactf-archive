import random
import re

with open('pt.txt', 'r') as file:
    pt = file.read()

trigrams = [chr(i)+chr(j)+chr(k) for i in range(97,97+26) for j in range(97,97+26) for k in range(97,97+26)]
shufflei = random.sample(range(97,97+26),26)
shufflej = random.sample(range(97,97+26),26)
shufflek = random.sample(range(97,97+26),26)
sub_trigrams = [chr(i)+chr(j)+chr(k) for i in shufflei for j in shufflej for k in shufflek]

def formatter(ctext, ptext):
    fctext = ""
    i = 0
    for c in ptext:
        if c.isalpha():
            fctext += ctext[i]
            i += 1
        elif c not in (' '):
            fctext += c
    return fctext

def encryption(ptext):
    cleanptext = re.sub(r'[^a-zA-Z]', '', ptext).lower()
    if(len(cleanptext) % 3 != 0):
        cleanptext += (3 - len(cleanptext) % 3) * 'x'
    ctext = "".join([sub_trigrams[trigrams.index(cleanptext[i*3:(i+1)*3])] for i, _ in enumerate(cleanptext[::3])])
    return formatter(ctext, ptext)

def decryption(ctext):
    cleanctext = re.sub(r'[^a-zA-Z]', '', ctext).lower()
    if(len(cleanctext) % 3 != 0):
        cleanctext += (3 - len(cleanctext) % 3) * 'x'
    return "".join([trigrams[sub_trigrams.index(cleanctext[i*3:(i+1)*3])] for i, _ in enumerate(cleanctext[::3])])

ct = encryption(pt)
print(ct)

with open("ct.txt", "wb") as file:
    file.write(ct.encode())