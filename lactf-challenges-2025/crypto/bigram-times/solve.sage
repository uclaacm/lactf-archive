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

not_the_flag = "mCtRNrPw_Ay9mytTR7ZpLJtrflqLS0BLpthi~2LgUY9cii7w"
also_not_the_flag = "PKRcu0l}D823P2R8c~H9DMc{NmxDF{hD3cB~i1Db}kpR77iU"
shifted_flag = "jlT84CKOAhxvdrPQWlWT6cEVD78z5QREBINSsU50FMhv662W"
real_flag = ""
for i in range(0, len(shifted_flag), 2):
    possibilities = solve(shifted_flag[i:i+2])
    for p in possibilities:
        if not (p == not_the_flag[i:i+2] or p == also_not_the_flag[i:i+2]):
            real_flag += p
            break
print(real_flag)
