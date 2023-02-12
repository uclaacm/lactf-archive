FROM pwn.red/jail

COPY --from=python:3.10-slim-bullseye / /srv
COPY main.py /srv/app/run
COPY flag.txt /srv/app/flag.txt
RUN chmod 755 /srv/app/run

ENV JAIL_MEM=20M
