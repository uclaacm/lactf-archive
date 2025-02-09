import random
import tqdm

MAX_NUM = 100_000_00

vals = []
fakes = []
# Randomly remove elements with probaility 25%
for i in tqdm.trange(1, MAX_NUM):
    if random.randint(0, 3) == 0:
        vals.append(i)
    elif random.randint(0, 20) == 0:
        fakes.append(i)

random.shuffle(vals)
random.shuffle(fakes)
vals[0] = 0
print(len(vals))

flag = "lactf{b1t_by_b1t_0r_jus7_411_4t_0nc3}"
flag_bits = "".join(format(ord(c), "08b") for c in flag)
print(flag_bits)
every_n = len(vals) // len(flag_bits)



new_vals = []
for idx, i in tqdm.tqdm(enumerate(vals)):
    next_val = vals[(idx + 1)] if idx != len(vals) - 1 else -1
    if idx // every_n < len(flag_bits):
        info_section = f"{idx // every_n},{flag_bits[idx // every_n]}" if idx % every_n == 0 else f""
    else:
        info_section = ""
    new_vals.append(f"{i}\t300\tIN\tTXT\t\"{next_val};{info_section}\"")

for idx, i in tqdm.tqdm(enumerate(fakes)):
    info_sec = f"{random.randint(0, len(flag) * 8)},{random.randint(0, 1)}" if idx % 100 == 0 else ""
    new_vals.append(f"{i}\t300\tIN\tTXT\t\"{random.randint(1, MAX_NUM)};{info_sec}\"")

with open("zone.txt", "w") as f:
    f.write(f"len\t300\tIN\tTXT\t\"{len(flag)}\"\n")
    f.write("\n".join(new_vals))
    f.write("\n")
