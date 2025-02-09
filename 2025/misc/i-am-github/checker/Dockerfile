FROM mirror.gcr.io/python:3.12-slim-bookworm AS python
COPY requirements.txt .
RUN mkdir /gpghome
ENV GNUPGHOME=/gpghome
RUN pip install -r requirements.txt
RUN apt-get update && apt-get install -y git gpg curl
RUN curl https://github.com/web-flow.gpg | gpg --import
RUN chmod -R 777 /gpghome

FROM pwn.red/jail
COPY --from=python / /srv
COPY enable_net.sh /jail/hook.sh
COPY app.py /srv/app/run
COPY .env /srv/app/.env
RUN chmod 755 /srv/app/run
ENV JAIL_MEM=200M
ENV JAIL_CPU=500
ENV JAIL_TMP_SIZE=200M
ENV JAIL_PIDS=30
ENV JAIL_TIME=300
ENV JAIL_POW=10000
ENV JAIL_ENV_GNUPGHOME=/tmp/gpg