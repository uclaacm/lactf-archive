import random

flag = "lactf{we_love_blum-micali_generators_h1MNZuJSFjlAEwc1}"
perm = [i for i in range(16)]
random.shuffle(perm)

def f(x):
    arr = int_to_array(x)

    map_lfsr7_to_arr = {0:perm[0], 1:perm[1], 2:perm[2], 3:perm[3], 4:perm[4], 5:perm[5], 6:perm[6]}
    lfsr7 = [arr[map_lfsr7_to_arr[i]] for i in range(7)]
    lfsr7_new_bit = lfsr7[0] ^ lfsr7[1] ^ 1
    lfsr7.pop(0)
    lfsr7.append(lfsr7_new_bit)

    map_lfsr5_to_arr = {0:perm[7], 1:perm[8], 2:perm[9], 3:perm[10], 4:perm[11]}
    lfsr5 = [arr[map_lfsr5_to_arr[j]] for j in range(5)]
    lfsr5_new_bit = lfsr5[4] ^ lfsr5[2] ^ 1
    lfsr5.pop()
    lfsr5.insert(0, lfsr5_new_bit)
    lfsr5_flipped = [1 if i == 0 else 0 for i in lfsr5]

    map_countup_to_arr = {0:perm[12], 1:perm[13], 2:perm[14], 3:perm[15]}
    countup = array_to_int([arr[map_countup_to_arr[k]] for k in range(4)])
    countup = (countup + 1) % 16
    countup_arr = int_to_array(countup, 4)

    for i in range(7):
        arr[map_lfsr7_to_arr[i]] = lfsr7[i]
    for j in range(5):
        arr[map_lfsr5_to_arr[j]] = lfsr5_flipped[j]
    for k in range(4):
        arr[map_countup_to_arr[k]] = countup_arr[k]

    return array_to_int(arr)

def f_inverse(x):
    arr = int_to_array(x)

    map_lfsr7_to_arr = {0: perm[0], 1: perm[1], 2: perm[2], 3: perm[3], 4: perm[4], 5: perm[5], 6: perm[6]}
    lfsr7 = [arr[map_lfsr7_to_arr[i]] for i in range(7)]
    lfsr7_old_bit = lfsr7[0] ^ lfsr7[6] ^ 1
    lfsr7.pop()
    lfsr7.insert(0, lfsr7_old_bit)

    map_lfsr5_to_arr = {0: perm[7], 1: perm[8], 2: perm[9], 3: perm[10], 4: perm[11]}
    lfsr5 = [arr[map_lfsr5_to_arr[j]] for j in range(5)]
    lfsr5_orig = [1 if i == 0 else 0 for i in lfsr5]
    lfsr5_old_bit = lfsr5_orig[3] ^ lfsr5_orig[0] ^ 1
    lfsr5_orig.pop(0)
    lfsr5_orig.append(lfsr5_old_bit)


    map_countup_to_arr = {0: perm[12], 1: perm[13], 2: perm[14], 3: perm[15]}
    countup = array_to_int([arr[map_countup_to_arr[k]] for k in range(4)])
    countup = (countup - 1) % 16
    countup_arr = int_to_array(countup, 4)

    for i in range(7):
        arr[map_lfsr7_to_arr[i]] = lfsr7[i]
    for j in range(5):
        arr[map_lfsr5_to_arr[j]] = lfsr5_orig[j]
    for k in range(4):
        arr[map_countup_to_arr[k]] = countup_arr[k]

    return array_to_int(arr)

def int_to_array(x, length=16):
    return [int(i) for i in format(x, 'b').zfill(length)]

def array_to_int(arr):
    return int("".join(str(i) for i in arr), 2)