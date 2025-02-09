FROM node:23-bookworm-slim

WORKDIR /app

COPY package.json package-lock.json /app/

RUN npm ci --production

COPY ./app.js /app/
COPY ./public /app/public

ENV PORT=3000

CMD ["node", "app.js"]