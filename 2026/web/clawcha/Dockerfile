FROM node:25-bookworm-slim

WORKDIR /app

COPY package.json package-lock.json /app/

RUN npm ci --production

COPY ./app.js ./inventory.js /app/
COPY ./site /app/site/

ENV PORT=3000

CMD ["node", "app.js"]
