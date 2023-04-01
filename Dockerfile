FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add strongswan

COPY sysctl.conf /ec/sysctl.conf
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
