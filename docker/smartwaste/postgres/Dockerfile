# PostgreSQL Container
FROM postgres:15-alpine

ENV POSTGRES_DB=smartwaste
ENV POSTGRES_USER=smartwaste_user
ENV POSTGRES_PASSWORD=smartwaste_password

COPY ./database/schema.sql /docker-entrypoint-initdb.d/01-schema.sql
COPY ./database/seed.sql /docker-entrypoint-initdb.d/02-seed.sql

EXPOSE 5432
