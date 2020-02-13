FROM postgres:10-alpine

LABEL maintainer="somprasong.damyos@gmail.com"
ENV TZ=Asia/Bangkok
ENV PGTZ=Asia/Bangkok
ENV POSTGRES_DB=sample-db

COPY ./sql/init.sql /docker-entrypoint-initdb.d/1-init.sql

