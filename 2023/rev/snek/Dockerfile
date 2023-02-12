FROM pwn.red/jail

COPY --from=python:3.10-slim-bullseye / /srv
COPY snek.py /srv/app/run
COPY flag.txt /srv/app/flag.txt
RUN chmod 755 /srv/app/run

ENV JAIL_MEM=40M
ENV JAIL_TIME=60
