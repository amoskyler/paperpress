FROM alpine:latest

RUN apk --no-cache add \
    openssl \
    libqrencode \
    haveged

ADD generators /generators
ADD encrypt.sh /encrypt.sh
ADD encode.sh /encode.sh

RUN chmod -R +x /generators/*
RUN chmod +x encrypt.sh
RUN chmod +x encode.sh

RUN mkdir /wallets

VOLUME /exports