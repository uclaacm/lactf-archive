FROM pwn.red/jail

COPY --from=python:3.14-slim-bookworm / /srv
COPY literally-1984.py /srv/app/run
COPY printflag /srv/app/
RUN chmod 755 /srv/app/run && chmod 111 /srv/app/printflag

ENV JAIL_MEM=40M JAIL_CPU=250
