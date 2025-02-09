characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789{}~_"
flag = "lactf{mULT1pl1cAtiV3_6R0uPz_4rE_9RE77y_5we3t~~~}"

def bigram_multiplicative_shift(bigram):
    assert(len(bigram) == 2)
    pos1 = characters.find(bigram[0]) + 1
    pos2 = characters.find(bigram[1]) + 1
    shift = (pos1 * pos2) % 67
    return characters[((pos1 * shift) % 67) - 1] + characters[((pos2 * shift) % 67) - 1]

shifted_flag = ""
for i in range(0, len(flag), 2):
    bigram = flag[i:i+2]
    shifted_bigram = bigram_multiplicative_shift(bigram)
    shifted_flag += shifted_bigram
print(shifted_flag)
# jlT84CKOAhxvdrPQWlWT6cEVD78z5QREBINSsU50FMhv662W

Zn = IntegerModRing(67)
def solve(bigram):
    pos1 = characters.find(bigram[0]) + 1
    pos2 = characters.find(bigram[1]) + 1

    cubed = Zn(pos1 * pos2)
    roots = cubed.nth_root(3, all = True)
    answers = []
    for r in roots:
        first = Zn(pos1) / Zn(r)
        second = Zn(pos2) / Zn(r)
        if first * second == r:
            gram = characters[int(first) - 1] + characters[int(second) - 1]
            answers.append(gram)
    return answers

not_the_flag = ""
also_not_the_flag = ""
for i in range(0, len(shifted_flag), 2):
    possibilities = solve(shifted_flag[i:i+2])
    counter = 0
    for p in possibilities:
        if p[0] != shifted_flag[i]:
            if counter == 0:
                not_the_flag += p
                counter += 1
            else:
                also_not_the_flag += p
print(not_the_flag)
# mCtRNrPw_Ay9mytTR7ZpLJtrflqLS0BLpthi~2LgUY9cii7w
print(also_not_the_flag)
# PKRcu0l}D823P2R8c~H9DMc{NmxDF{hD3cB~i1Db}kpR77iU
