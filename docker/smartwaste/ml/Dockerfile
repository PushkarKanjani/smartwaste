# ML Service Container - Python/Flask
FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    gcc \
    postgresql-client \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements
COPY docker/smartwaste/ml/requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

# Copy ML service directory
COPY ml_service ./ml_service

ENV FLASK_ENV=production
ENV FLASK_APP=app.py
ENV PORT=5000

EXPOSE 5000

HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
  CMD curl -f http://localhost:5000/health || exit 1

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "--workers", "4", "--timeout", "120", "app:app"]
