#!/usr/local/bin/python3
class PRNG:
    i = 3473400794307473
    seed = None
    def __init__(self):
        self.seed = 0
    def setSeed(self,seed):
        self.seed=seed^self.i
    def nextLong(self):
        m = 1 << 52
        c = 4164880461924199
        a = 2760624790958533
        self.seed = (a*self.seed + c) & (m - 1)
        return self.seed
r = PRNG()
try:
    seed = int(input("Enter a seed that makes a 16-eye portal:\n"))
except ValueError:
    print("Error: please enter a valid seed.")
    exit()
r.setSeed(seed)
filled = True
for i in range(26):
    _ = r.nextLong()
for i in range(16):
    filled = (filled and r.nextLong() > (9 * (1 << 52)/10))
if (filled):
    print("You found a valid seed! Flag: ", end="")
    with open('flag.txt','r') as f:
        print(f.read(),end="")
else:
    print("Invalid seed try again.")
