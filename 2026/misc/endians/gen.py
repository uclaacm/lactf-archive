text = "lactf{REDACTED}"
endian = text.encode(encoding="???").decode(encoding="???")
with open("chall.txt", "wb") as file:
    file.write(endian.encode())