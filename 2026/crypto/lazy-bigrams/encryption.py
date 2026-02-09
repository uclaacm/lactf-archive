import random
import re
flag = "lactf{n0t_r34lly_4_b1gr4m_su8st1tu7ion_bu7_1_w1ll_tak3_1t_f0r_n0w}"
bigrams = [chr(65+i//26)+chr(65+i%26) for i in range(676)]
sub_bigrams = random.sample(bigrams, len(bigrams))
phonetic_map = {"A":"ALPHA","B":"BRAVO","C":"CHARLIE","D":"DELTA","E":"ECHO","F":"FOXTROT","G":"GOLF","H":"HOTEL","I":"INDIA","J":"JULIETT","K":"KILO","L":"LIMA","M":"MIKE","N":"NOVEMBER","O":"OSCAR","P":"PAPA","Q":"QUEBEC","R":"ROMEO","S":"SIERRA","T":"TANGO","U":"UNIFORM","V":"VICTOR","W":"WHISKEY","X":"XRAY","Y":"YANKEE","Z":"ZULU","_":"UNDERSCORE","{":"OPENCURLYBRACE","}":"CLOSECURLYBRACE","0":"ZERO","1":"ONE","2":"TWO","3":"THREE","4":"FOUR","5":"FIVE","6":"SIX","7":"SEVEN","8":"EIGHT","9":"NINE"}

def phonetic_mapping(ptext):
    cleanptext = ptext.upper()
    mapped = ""
    for c in cleanptext:
        mapped += phonetic_map[c]
    if (len(mapped) % 2 == 1):
        mapped += "X"
    print(len(mapped))
    return mapped

def encryption(ptext):
    cleanptext = re.sub(r'[^a-zA-Z]', '', ptext).upper()
    print(cleanptext)
    ctext = "".join([sub_bigrams[bigrams.index(cleanptext[i*2:(i+1)*2])] for i, _ in enumerate(cleanptext[::2])])
    used_bigrams = list(set([cleanptext[(i*2):(i+1)*2] for i, _ in enumerate(cleanptext[::2])]))
    used_bigrams.sort()
    #print(used_bigrams)
    return ctext

def decryption(ctext):
    return "".join([bigrams[sub_bigrams.index(ctext[i*2:(i+1)*2])] for i in range(len(ctext)//2)])

pt = phonetic_mapping(phonetic_mapping(flag))
#print([a+":"+b for a,b in zip(bigrams,sub_bigrams)])
#print(pt)
ct = encryption(pt)
print(ct)
#recpt = decryption(ct)
#print(recpt)
