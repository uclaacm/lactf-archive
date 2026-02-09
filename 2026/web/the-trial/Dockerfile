FROM node:25-bookworm-slim

WORKDIR /app

COPY package.json package-lock.json /app/

RUN npm ci --production

COPY app.js index.html /app/

ENV PORT=3000

CMD ["node", "app.js"]
