FROM ubuntu:24.04 AS build

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -yq --no-install-recommends \
        bc \
        bison \
        build-essential \
        ca-certificates \
        cpio \
        flex \
        libelf-dev \
        libssl-dev \
        python3 \
        wget \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir /build
RUN wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.9.tar.xz -O /build/linux.tar.xz
RUN tar -C /build -xf /build/linux.tar.xz
WORKDIR /build/linux-6.10.9

RUN make -j$(nproc)
