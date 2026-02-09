FROM pwn.red/jail

COPY --from=debian@sha256:56ff6d36d4eb3db13a741b342ec466f121480b5edded42e4b7ee850ce7a418ee / /srv
COPY pwn_the_time_war /srv/app/run
COPY flag.txt /srv/app/flag.txt
RUN chmod 755 /srv/app/run

ENV JAIL_TIME=180
