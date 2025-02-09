import random
mat = []
commands = []
counter = -1
for i in range(40):
    mat.append([])
    for j in range(40):
        num = random.randint(0,255)
        mat[i].append(num)
        counter += 1
        commands.append(f'/data merge block {i} 0 {j} {{RecordItem:{{id:"minecraft:stone",Count:1b,tag:{{Storage: {num}}}}}}}\n')

with open('commands','w') as f:
    f.writelines(commands)
with open('matrix','w') as f:
    for row in mat:
        f.write(str(row) + '\n')
