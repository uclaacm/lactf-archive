FROM jkarlos/git-server-docker

RUN apk add --no-cache git-daemon bash
RUN passwd -d git
COPY sshd_config /etc/ssh/sshd_config
COPY start.sh /git-server/start.sh
COPY new-challenge.git /git-server/repos/new-challenge.git
COPY pre-receive /git-server/repos/new-challenge.git/hooks/pre-receive

RUN true \
    && git config --system receive.denyDeletes true \
    && git config --system receive.denyNonFastForwards true \
    && true
