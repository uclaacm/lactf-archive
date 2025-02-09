FROM ubuntu:24.04 as app

FROM pwn.red/jail

COPY --from=app / /srv
COPY flag.txt /srv/app/
COPY chall /srv/app/run
RUN chmod 755 /srv/app/run