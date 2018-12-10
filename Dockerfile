FROM golang:1.11.2-alpine3.8

LABEL mantainer="alessandro.lucarini@smanapp.com"

ENV TIMEZONE="Europe/Rome"
ENV DOMAIN="foo.com"

RUN apk --no-cache add --update git \
    && go get github.com/jsha/minica \
    && apk del git \
    && rm -rf /var/cache/apk/* \
    && mkdir /app

WORKDIR /app

ENTRYPOINT [ "minica" ]