FROM pwn.red/jail

COPY --from=python:3.12-slim-bookworm / /srv
COPY checker.py /srv/app/run
RUN chmod 755 /srv/app/run

ENV JAIL_MEM=50M
ENV JAIL_CPU=250
ENV JAIL_TIME=300
ENV JAIL_POW=200