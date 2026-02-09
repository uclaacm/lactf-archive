FROM pwn.red/jail

COPY --from=ubuntu@sha256:ed1544e454989078f5dec1bfdabd8c5cc9c48e0705d07b678ab6ae3fb61952d2 / /srv
COPY chall /srv/app/run
COPY flag.txt /srv/app/flag.txt
RUN chmod 755 /srv/app/run