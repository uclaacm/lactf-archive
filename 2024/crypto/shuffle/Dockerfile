FROM pwn.red/jail

COPY --from=python:3.12-slim-bookworm / /srv
COPY shuffler.py /srv/app/run
COPY secret_message.txt /srv/app/secret_message.txt
RUN chmod 755 /srv/app/run

ENV JAIL_MEM=20M JAIL_CPU=200 JAIL_TIME=60
