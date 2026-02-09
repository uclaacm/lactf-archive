import re

shuffles = ["clxodmibnyhztpkafjsegqrwuv","jhapylomqectfzgixwudkbvnrs","exlwsirzovqmyagfcnhtbpjdku"] # The substitution ciphers

with open('ct.txt', 'r') as file:
    ct = file.read()

def formatter(ctext, ptext):
    fctext = ""
    i = 0
    for c in ptext:
        if c.isalpha():
            fctext += ctext[i]
            i += 1
        elif c not in (" "):
            fctext += c
    return fctext

print(formatter("".join([chr(97+shuffles[i % 3].index(c)) for i, c in enumerate(re.sub(r'[^a-z]', '', ct))]),ct))