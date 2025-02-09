FROM ubuntu:24.04 AS app

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -yq --no-install-recommends \
		qemu-system-x86 \
	&& rm -rf /var/lib/apt/lists/*

FROM pwn.red/jail

COPY --from=app / /srv
COPY run /srv/app/run
COPY initramfs.cpio.gz bzImage /srv/app/
RUN chmod 755 /srv/app/run

ENV JAIL_TIME=2000 JAIL_MEM=256M JAIL_CPU=500 JAIL_PIDS=10
