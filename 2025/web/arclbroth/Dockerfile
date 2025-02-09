FROM node:16-bookworm-slim

WORKDIR /app

RUN apt-get update -y && apt-get install -y python3 build-essential sqlite3 libsqlite3-dev

COPY package.json package-lock.json /app/

RUN npm ci --production

COPY ./app.js /app/
COPY ./site /app/site/

ENV PORT=3000

CMD ["node", "app.js"]
