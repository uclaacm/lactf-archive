FROM pwn.red/jail

COPY --from=python:3.12-slim-bookworm / /srv
COPY pprngc.py /srv/app/run
COPY super_secret_stuff.py /srv/app/super_secret_stuff.py
RUN chmod 755 /srv/app/run

ENV JAIL_MEM=20M JAIL_TIME=40
