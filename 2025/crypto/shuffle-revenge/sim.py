from secrets import randbits
from tqdm import tqdm
import math

iters = 100000

fails = 0

for i in tqdm(range(iters)):

    xs = []

    for i in range(256):
        x = randbits(64)
        xs.append(x)

    xs.sort()

    for i in range(16):
        lb = max(0, (i * 16) / 256 * (1 << 64) - (1 << 64) / 32)
        ub = min(1 << 64, (i * 16) / 256 * (1 << 64) + (1 << 64) / 32)
        if not (xs[i * 16] >= lb and xs[i * 16] <= ub):
            fails += 1
            break

success = iters - fails
print(success, fails)
print(success / iters)
