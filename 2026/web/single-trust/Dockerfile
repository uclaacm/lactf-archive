FROM ubuntu:20.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs npm

WORKDIR /app

COPY package.json package-lock.json /app/
RUN npm ci

COPY index.js /app
COPY index.html /app
COPY static /app/static
COPY flag.txt /flag.txt

# TODO - add user permissions
RUN mkdir /tmp/pastestore

ENV PORT=8080
CMD ["node", "/app/index.js"]
