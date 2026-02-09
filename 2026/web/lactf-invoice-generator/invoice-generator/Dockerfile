FROM ghcr.io/puppeteer/puppeteer:latest

WORKDIR /app

USER root
RUN chown pptruser:pptruser /app
USER pptruser

COPY package.json package-lock.json ./

RUN npm ci --production

COPY server.js ./
COPY public ./public/

ENV XDG_CONFIG_HOME=/tmp/.chromium
ENV XDG_CACHE_HOME=/tmp/.chromium

CMD ["node", "server.js"]
