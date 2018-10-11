FROM postgres:10-alpine

LABEL maintainer="somprasongd"

ENV POSTGRES_DB=sample-db

COPY ./sql/init.sql /docker-entrypoint-initdb.d/1-init.sql

