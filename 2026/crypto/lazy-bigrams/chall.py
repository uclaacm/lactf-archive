import random
import re

flag = "lactf{REDACTED}"
bigrams = [chr(65+i//26)+chr(65+i%26) for i in range(26**2)]
sub_bigrams = random.sample(bigrams, len(bigrams))
phonetic_map = {"A":"ALPHA","B":"BRAVO","C":"CHARLIE","D":"DELTA","E":"ECHO","F":"FOXTROT","G":"GOLF","H":"HOTEL","I":"INDIA","J":"JULIETT","K":"KILO","L":"LIMA","M":"MIKE","N":"NOVEMBER","O":"OSCAR","P":"PAPA","Q":"QUEBEC","R":"ROMEO","S":"SIERRA","T":"TANGO","U":"UNIFORM","V":"VICTOR","W":"WHISKEY","X":"XRAY","Y":"YANKEE","Z":"ZULU","_":"UNDERSCORE","{":"OPENCURLYBRACE","}":"CLOSECURLYBRACE","0":"ZERO","1":"ONE","2":"TWO","3":"THREE","4":"FOUR","5":"FIVE","6":"SIX","7":"SEVEN","8":"EIGHT","9":"NINE"}

def phonetic_mapping(ptext):
    cleanptext = re.sub(r'[^a-zA-Z0-9_{}]', '', ptext).upper()
    mapped = "".join([phonetic_map[c] for c in cleanptext])
    if (len(mapped) % 2 == 1):
        mapped += "X"
    return mapped

def encryption(ptext):
    cleanptext = re.sub(r'[^a-zA-Z]', '', ptext).upper()
    ctext = "".join([sub_bigrams[bigrams.index(cleanptext[i*2:(i+1)*2])] for i, _ in enumerate(cleanptext[::2])])
    return ctext

def decryption(ctext):
    return "".join([bigrams[sub_bigrams.index(ctext[i*2:(i+1)*2])] for i, _ in enumerate(ctext[::2])])

pt = phonetic_mapping(phonetic_mapping(flag))
ct = encryption(pt)
print(ct)

with open("ct.txt", "wb") as file:
    file.write(ct)