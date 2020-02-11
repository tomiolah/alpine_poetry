FROM alpine:3

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN apk --update add --no-cache python3 py3-psycopg2 postgresql-dev && \
    apk add --no-cache --virtual .build-deps make gcc g++ python3-dev openssl-dev libffi-dev && \
    pip3 install --upgrade pip setuptools poetry

