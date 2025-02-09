FROM pwn.red/jail

COPY --from=ubuntu:24.04 / /srv
COPY run /srv/app/run
COPY lamp libc.so.6 ld-linux-x86-64.so.2 flag.txt /srv/app/
RUN chmod 755 /srv/app/run

ENV JAIL_MEM=2G JAIL_TIME=6000 JAIL_CPU=1000
