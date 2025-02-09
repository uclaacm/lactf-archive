flag = open('../flag.txt','rb').read()

def lcg(seed):
    return (97*seed + 129) % 256

seed = 106

new = []

for i in range(len(flag)):
    seed = lcg(seed)
    new.append(seed ^ flag[i])

for i in range(len(flag)):
    new[i] = pow(6, new[i], 251)

with open('matrix','r') as f:
    matrix = [eval(i) for i in f.readlines()]

newnew = []
for i in range(40):
    out = 0
    for j in range(40):
        out += matrix[i][j] * new[j]
    out %= 251
    newnew.append(out)

print(newnew)

print('flag bytes')

for i in range(len(flag)):
    print(flag[i])