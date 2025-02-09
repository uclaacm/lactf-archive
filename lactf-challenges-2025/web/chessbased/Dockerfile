FROM node:21-bookworm-slim AS frontend-builder
WORKDIR /frontend

COPY frontend/package*.json ./
RUN npm ci

COPY frontend/ ./
RUN npm run build

FROM node:21-bookworm-slim
WORKDIR /app

COPY backend/package*.json ./
RUN npm ci

COPY backend/*.js ./

COPY --from=frontend-builder /frontend/dist /frontend/dist

ENV PORT=3000

CMD ["node", "app.js"]
