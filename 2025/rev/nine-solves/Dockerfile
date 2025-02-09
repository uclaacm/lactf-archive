FROM pwn.red/jail

COPY --from=debian:bookworm-slim / /srv
COPY nine-solves /srv/app/run
COPY flag.txt /srv/app/flag.txt
RUN chmod 755 /srv/app/run
