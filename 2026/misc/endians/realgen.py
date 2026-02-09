text = "lactf{1_sur3_h0pe_th1s_d0es_n0t_g3t_l0st_1n_translati0n!}"
endian = text.encode(encoding="UTF-16LE").decode(encoding="UTF-16BE") # UTF-8 also works for decoding because the null bytes are discarded
with open("chall.txt", "wb") as file:
    file.write(endian.encode())