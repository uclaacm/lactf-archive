flag = "lactf{the_flag_got_lost_in_infinity}"

out = ""
mid = len(flag) // 2
for (a, b) in zip(flag[:mid], flag[mid:]):
    out += a + b
print(out)
