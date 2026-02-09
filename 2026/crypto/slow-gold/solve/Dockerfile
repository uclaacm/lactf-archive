FROM ubuntu:22.04 AS app

RUN apt-get update && apt-get install -yq --no-install-recommends \
    build-essential \
    cmake \
    libssl-dev \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /

COPY emp-ot /emp-ot

COPY emp-tool /emp-tool

COPY emp-zk /emp-zk

COPY install.py /install.py

RUN python3 install.py --deps --tool --ot --zk

WORKDIR /emp-zk

RUN make

FROM pwn.red/jail

COPY --from=app / /srv

COPY ./run.sh /srv/app/run

RUN chmod 755 /srv/app/run

ENV JAIL_TIME=2000 JAIL_MEM=256M JAIL_CPU=500 JAIL_POW=15000