FROM python:3.14-slim-bookworm AS app
RUN pip install --no-cache-dir pycryptodome

FROM pwn.red/jail
COPY --from=app / /srv
COPY server.py /srv/app/run
COPY flag.txt /srv/app/flag.txt
COPY fake_flag.txt /srv/app/fake_flag.txt
RUN chmod 755 /srv/app/run

ENV JAIL_MEM=20M
ENV JAIL_TIME=300
ENV JAIL_POW=15000
