import os
import shlex

ports = [*range(5000, 5500)]

args = shlex.split("gunicorn app:app --threads 500 --keyfile ../certbot/key.pem --certfile ../certbot/cert.pem -b 0.0.0.0:8000")
for p in ports:
    args.extend(["-b", f"0.0.0.0:{p}"])

cmd = shlex.join(args)
os.system(cmd)
