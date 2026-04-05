FROM python:3.12-alpine

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apk add --no-cache mariadb-connector-c-dev \
    && apk add --no-cache --virtual .build-deps \
       build-base \
       mariadb-dev \
       gcc \
       musl-dev \
    && pip install --no-cache-dir mysqlclient \
    && apk del .build-deps \
    && apk add --no-cache libffi-dev openssl-dev

RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
