ans = b"it's a log cabin!!!\x00"
enc = [(b * 17) % 253 for b in ans]

print(f"unsigned char enc[{len(enc)}] = {{{', '.join(str(x) for x in enc)}}};")
