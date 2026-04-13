# Frontend Nginx Container
FROM nginx:alpine

RUN apk add --no-cache curl

# Copy nginx configuration
COPY docker/smartwaste/frontend/nginx.conf /etc/nginx/nginx.conf

# Copy frontend static files
COPY frontend /usr/share/nginx/html

# Create health check file
RUN echo "OK" > /usr/share/nginx/html/health

EXPOSE 80 443

HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
  CMD curl -f http://localhost/health || exit 1

CMD ["nginx", "-g", "daemon off;"]
