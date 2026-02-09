FROM pwn.red/jail

COPY --from=debian@sha256:aca3e110b8fee2a2acdf8cbe6cef1cfebef52e5257da87fbd41920d3411c1aed / /srv
COPY chall /srv/app/run
COPY flag.txt /srv/app/flag.txt
RUN chmod 755 /srv/app/run

ENV JAIL_TIME 120