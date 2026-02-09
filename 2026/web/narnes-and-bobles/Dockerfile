FROM oven/bun:slim

WORKDIR /app

RUN apt-get update && apt-get install -y build-essential

COPY package.json bun.lock /app/
RUN bun install --frozen-lockfile --production

COPY . .

# run the app
USER bun
EXPOSE 3000/tcp
ENTRYPOINT [ "bun", "run", "server.js" ]
