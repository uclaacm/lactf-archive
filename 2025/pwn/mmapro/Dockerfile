FROM pwn.red/jail

COPY --from=ubuntu:23.04 / /srv
COPY mmapro /srv/app/run
COPY flag.txt /srv/app
RUN chmod 755 /srv/app/run
