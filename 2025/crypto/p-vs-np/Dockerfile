FROM python:3.12-slim-bookworm AS app
RUN pip install --no-cache-dir pycryptodome

FROM pwn.red/jail
COPY --from=app / /srv
COPY chall.py /srv/app/run
COPY flag.txt /srv/app/flag.txt
COPY VDF.py /srv/app/VDF.py
RUN chmod 755 /srv/app/run

ENV JAIL_MEM=30M JAIL_TIME=90
