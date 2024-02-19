FROM pwn.red/jail

COPY --from=debian:bookworm-slim / /srv
COPY verify /srv/app/run
RUN chmod 755 /srv/app/run
