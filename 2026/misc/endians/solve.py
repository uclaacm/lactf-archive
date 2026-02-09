with open("chall.txt","rb") as file:
    chall = file.read()
print(chall.decode().encode(encoding="UTF-16BE").decode(encoding="UTF-16LE")) # UTF-8 also works for decoding since the null bytes are discarded