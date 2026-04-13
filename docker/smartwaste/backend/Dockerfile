# Backend API Container - Node.js/Express
FROM node:18-alpine

WORKDIR /app

RUN apk add --no-cache curl

# Copy application files
COPY package.json package-lock.json ./

RUN npm ci --production || npm install --production

# Copy source code
COPY backend ./backend
COPY data ./data
COPY database ./database

ENV NODE_ENV=production
ENV PORT=3000
ENV DB_HOST=postgres
ENV DB_PORT=5432
ENV DB_NAME=smartwaste
ENV DB_USER=smartwaste_user

EXPOSE 3000

HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
  CMD curl -f http://localhost:3000/api/health || exit 1

CMD ["node", "backend/server.js"]
