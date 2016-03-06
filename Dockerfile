FROM alpine
RUN apk add --update bind && rm -rf /var/cache/apk/*
COPY named.conf /etc/bind/named.conf
CMD named -g