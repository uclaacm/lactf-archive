import segno
from PIL import Image
import numpy as np
import random
import os

flag = "lactf{REDACTED}"

qr = segno.make(flag, mode='byte', error='L', boost_error=False, version=7)
qr.save("temp.txt", border=0)
with open("temp.txt", 'r') as file:
    code = file.read()
code = [255-(int(l)*255) for l in code if l in ("0","1")]
chunks = [c for chunk in [[[code[405*y+45*ysub+9*x:405*y+45*ysub+9*(x+1)] for ysub in range(9)] for x in range(5)] for y in range(5)] for c in chunk]
random.shuffle(chunks)
scrambled = [c for col in [[[r for row in [chunks[5*y+x][ysub] for x in range(5)] for r in row] for ysub in range(9)] for y in range(5)] for c in col]
qrc = Image.fromarray(np.array(scrambled,dtype=np.uint8))
qrc = qrc.resize((450,450), resample=Image.Resampling.NEAREST)
qrc.save('chall.png')
os.remove("temp.txt")