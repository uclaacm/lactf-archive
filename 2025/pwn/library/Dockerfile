FROM ubuntu@sha256:8a37d68f4f73ebf3d4efafbcf66379bf3728902a8038616808f04e34a9ab63ee AS app

FROM pwn.red/jail

COPY --from=app / /srv
COPY flag.txt /srv/app/
COPY library /srv/app/run
RUN chmod 755 /srv/app/run

ENV JAIL_TIME=120
