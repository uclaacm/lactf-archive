# === gcr.io/paradigmxyz/ctf/base:latest === 

FROM python:3.9.13

ENV PORT=31337

RUN true \
    && mkdir /var/log/ctf /startup \
    # LACTF: we need glibc 2.32+ for solc 0.18.8
    && echo "deb http://ftp.debian.org/debian sid main" >> /etc/apt/sources.list \
    && apt update \
    && apt install -y libc6 libc6-dev xinetd tini \
    && rm -rf /var/cache/apt/archives \
    && useradd -m ctf \
    && true

COPY eth-challenge-base/00-create-xinetd-service /startup
COPY eth-challenge-base/99-start-xinetd /startup
COPY eth-challenge-base/handler.sh /home/ctf/handler.sh
COPY eth-challenge-base/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["tini", "-g", "--"]
CMD ["/entrypoint.sh"]

# === eth-challenge-base === 

COPY eth-challenge-base/requirements.txt /root

RUN python3 -m pip install -r /root/requirements.txt 

RUN true \
    && curl -L https://foundry.paradigm.xyz | bash \
    && bash -c "source /root/.bashrc && foundryup" \
    && chmod 755 -R /root \
    && true

COPY eth-challenge-base/98-start-gunicorn /startup

COPY eth-challenge-base/eth_sandbox /usr/lib/python/eth_sandbox

ENV PYTHONPATH /usr/lib/python

# === LA CTF specific config ===

RUN true \
    && cd /tmp \
    && /root/.foundry/bin/forge install @openzeppelin=OpenZeppelin/openzeppelin-contracts --no-git \
    && true

COPY eth-challenge-base/remappings.txt /tmp/remappings.txt
COPY eth-challenge-base/foundry.toml /tmp/foundry.toml

ARG SHARED_SECRET="this really needs to be set but just in case here's a default no one will guess"
ARG FLAG="if you see this please contact the LA CTF organizers (we forgor to add the flag 💀)"
ARG HTTP_HOST="127.0.0.1"
ARG HTTP_PORT="8545"
ARG CHALLENGE_DIRECTORY

ENV PORT=5000
ENV PUBLIC_IP=${HTTP_HOST}
ENV HTTP_PORT=${HTTP_PORT}
ENV SHARED_SECRET=${SHARED_SECRET}
ENV FLAG=${FLAG}
ENV LACTF_CONTRACT_PATH="/home/ctf/compiled/Setup.sol/Setup.json"

COPY ${CHALLENGE_DIRECTORY}/*.sol /tmp/contracts/

RUN true \
    && cd /tmp \
    && /root/.foundry/bin/forge build --out /home/ctf/compiled \
    && rm -rf /tmp/contracts \
    && true
