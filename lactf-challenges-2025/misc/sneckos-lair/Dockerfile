FROM pwn.red/jail

# python:3.14-rc-slim-bookworm
COPY --from=python@sha256:d3203d47145180d8c9aa591b51c9f86379826f2ecd6940dea0abd9a41305a3a5 / /srv
COPY sneckos-lair.py /srv/app/run
COPY printflag /srv/app/
RUN chmod 755 /srv/app/run && chmod 111 /srv/app/printflag

ENV JAIL_MEM=30M
