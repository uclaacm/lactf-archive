FROM node:19-bullseye-slim

WORKDIR /app

COPY package.json package-lock.json /app/
RUN npm ci

COPY index.js /app
COPY static /app/static

ENV PORT=8080
CMD ["node", "/app/index.js"]