FROM node:23.7.0-alpine3.20
ENV NEXT_TELEMETRY_DISABLED=1
RUN apk add --no-cache libc6-compat
RUN addgroup --system --gid 1001 nodejs
RUN adduser --system --uid 1001 nextjs
ARG FLAG="lactf{fake_flag}"
RUN printf "\"$FLAG\"" > /flag.txt
RUN chmod a+r /flag.txt
WORKDIR /app
COPY package.json pnpm-lock.yaml ./
RUN corepack enable pnpm && pnpm i --frozen-lockfile
COPY jsconfig.json next.config.mjs guestbook.txt ./
COPY pages ./pages
COPY public ./public
RUN mkdir .next
RUN chown nextjs:nodejs /app/.next
RUN chown nextjs:nodejs /app/guestbook.txt
USER nextjs
RUN pnpm --version
EXPOSE 3000
ENV PORT=3000
ENV HOSTNAME="0.0.0.0"
CMD ["pnpm", "run", "dev"]