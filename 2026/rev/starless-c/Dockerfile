FROM pwn.red/jail

COPY --from=debian:bookworm-slim / /srv
COPY starless_c /srv/app/run
COPY flag.txt /srv/app/flag.txt
RUN chmod 755 /srv/app/run
