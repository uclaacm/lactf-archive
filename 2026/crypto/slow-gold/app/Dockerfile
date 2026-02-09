FROM ubuntu:22.04 AS app

RUN apt-get update && apt-get install -yq --no-install-recommends \
    build-essential \
    cmake \
    libssl-dev \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /chall

COPY emp-ot /chall/emp-ot

COPY emp-tool /chall/emp-tool

COPY emp-zk /chall/emp-zk

COPY install.py /chall/install.py

RUN python3 install.py --deps --tool --ot --zk

WORKDIR /chall/emp-zk

RUN make

FROM pwn.red/jail

COPY --from=app / /srv

RUN cp -r /srv/chall /srv/app

COPY ./run.sh /srv/app/run

RUN chmod 755 /srv/app/emp-zk/bin/test_arith_chall

RUN chmod 755 /srv/app/run

ENV JAIL_TIME=100 JAIL_MEM=256M JAIL_CPU=500
