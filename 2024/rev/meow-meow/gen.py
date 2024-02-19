def write_file(file_num, char_arr):
    import random
    n = 29**4 + 29**3 + 29**2 + 29**1 + 29**0 + 100 # +100 for good measure
    from tqdm import tqdm
    global all_rows
    all_rows = list(range(1, n)) # all_rows includes row numbers that are unused
    random.shuffle(all_rows)

    data = [[-1] * 29 for i in range(n)]

    def get_row():
        global all_rows

        if len(all_rows) < 29:
            raise Exception("Not enough items")
        a = all_rows[0:29]
        all_rows = all_rows[29:]
        return a

    # randomize first row
    data[0] = get_row()

    for i in tqdm(data[0]):
        data[i] = get_row()
        for j in tqdm(data[i], leave=False):
            data[j] = get_row()
            for k in data[j]:
                data[k] = get_row()
                for l in data[k]:
                    data[l] = [-1] * 29

    print(len(data), len(data[0]))

    data[data[data[data[data[0][char_arr[0]]][char_arr[1]]][char_arr[2]]][char_arr[3]]][char_arr[4]] = -2

    cur_row = 0
    print(cur_row)
    for i in char_arr:
        cur_row = data[cur_row][i]
        print(cur_row)


    with open("data" + str(file_num), "wb") as f:
        for row in data:
            for num in row:
                if num == -1:
                    f.write(b"\0god")
                elif num == -2:
                    f.write(b"\0tac")
                else:
                    f.write(num.to_bytes(4, "little"))


flag = "lactf{meow_you_found_me_epcsihnxos}"

vals = []
for c in flag:
    if c == "_":
        vals.append(26)
    elif c == "{":
        vals.append(27)
    elif c == "}":
        vals.append(28)
    else:
        vals.append(ord(c) - ord("a"))

print(vals)



for i in range(int(len(flag) / 5)):
    print(vals[i * 5: i * 5 + 5])
    write_file(i + 1, vals[i * 5: i * 5 + 5])



