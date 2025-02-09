import galois
import numpy as np

def lcg(seed):
    return (seed * 97 + 129) % 256


nums = [137, 193, 59, 168, 164, 129, 35, 165, 159, 193, 12, 170, 90, 182, 156, 214, 172, 62, 59, 106, 175, 186, 174, 231, 160, 56, 67, 221, 44, 68, 90, 244, 192, 123, 140, 245, 218, 169, 58, 8]

with open('../gen/matrix','r') as f:
    matrix = [[j% 251 for j in eval(i)] for i in f.readlines()]

GF = galois.GF(251)
A = GF(matrix)

A_inv = np.linalg.inv(A)
print(A_inv)

inverted = A_inv @ GF(nums)

print(inverted)

nums = inverted.tolist()

search = []

for i in range(40):
    searchdict = {}
    for j in range(0,256):
        x = pow(6,j,251)
        if x in searchdict:
            searchdict[x].append(j)
        else:
            searchdict[x] = [j]
    search.append(searchdict.copy())

flag = 'l'
flag_xor = []

for i in range(1,40):
    flag_xor.append(search[i][nums[i]])

print(flag_xor)

keystream = []
s = 106
for i in range(40):
    s = lcg(s)
    keystream.append(s)

for i in range(1,40):
    candidates = []
    for j in flag_xor[i-1]:
        if (j ^ keystream[i]) < 128:
            candidates.append(j ^ keystream[i])
    
    if len(candidates) == 1:
        flag += chr(candidates[0])
    else:
        flag += (f'[POTENTIAL CHARS: {",".join([chr(i) for i in candidates])}]')
    
print(flag)
print(len(flag))