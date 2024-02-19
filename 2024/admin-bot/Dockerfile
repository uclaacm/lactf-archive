FROM node:21-bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    libglib2.0-0 libnss3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libdrm2 \
    libxkbcommon0 libxcomposite1 libxdamage1 libxrandr2 libgbm1 libgtk-3-0 \
    libasound2 libxshmfence1 libx11-xcb1

WORKDIR /app

COPY .puppeteerrc.cjs package.json package-lock.json ./
RUN npm ci && npm cache clean --force

COPY . .

ENV PORT=8080

ARG RECAPTCHA_SITE
ENV RECAPTCHA_SITE=${RECAPTCHA_SITE}
ARG RECAPTCHA_SECRET
ENV RECAPTCHA_SECRET=${RECAPTCHA_SECRET}

USER node
CMD ["node", "index.js"]
