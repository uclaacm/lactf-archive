FROM node:23-bookworm-slim

WORKDIR /app

COPY ./app/package.json ./app/package-lock.json /app/

RUN npm ci --production

COPY ./app/src/ /app/src/
COPY ./app/public /app/public/
COPY ./app/flag.txt /app/

ENV PORT=3000

CMD ["node", "src/index.js"]
