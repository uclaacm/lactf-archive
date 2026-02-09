FROM pwn.red/jail

COPY --from=ubuntu:noble / /srv
COPY chall /srv/app/run
COPY flag.txt /srv/app/flag.txt
RUN chmod 755 /srv/app/run
