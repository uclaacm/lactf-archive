FROM golang:1.25-alpine AS builder

WORKDIR /build

COPY go.mod go.sum* ./
RUN go mod download

COPY *.go ./

RUN CGO_ENABLED=0 GOOS=linux go build -o glotq .

FROM alpine:3.23

RUN apk add --no-cache jq yq man-db man-pages curl gcc musl-dev

RUN ARCH=$(uname -m) && \
    if [ "$ARCH" = "x86_64" ]; then XQ_ARCH="amd64"; \
    elif [ "$ARCH" = "aarch64" ]; then XQ_ARCH="arm64"; \
    else XQ_ARCH="amd64"; fi && \
    curl -sSL "https://github.com/sibprogrammer/xq/releases/download/v1.2.4/xq_1.2.4_linux_${XQ_ARCH}.tar.gz" | tar -xz -C /usr/local/bin xq && \
    chmod +x /usr/local/bin/xq

COPY man/*.1 /usr/share/man/man1/
RUN mandb

WORKDIR /app

COPY --from=builder /build/glotq .

COPY static ./static

COPY readflag/readflag.c /tmp/readflag.c
RUN gcc -o /readflag /tmp/readflag.c && \
    rm /tmp/readflag.c

COPY flag.txt /flag.txt
RUN chmod 400 /flag.txt && \
    chown root:root /flag.txt

RUN chown root:root /readflag && \
    chmod 4755 /readflag

RUN adduser -D -H glotq

RUN chown -R glotq:glotq /app

USER glotq

EXPOSE 8080

CMD ["./glotq"]
