FROM node:23-bookworm-slim

WORKDIR /app

COPY package.json package-lock.json /app/

RUN npm ci

COPY ./public /app/public
COPY ./views /app/views
COPY ./index.js /app/

CMD ["node", "index.js"]
