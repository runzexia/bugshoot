FROM alpine:edge
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add mandoc \
 && apk add bash bash-doc \
 && apk add sysstat sysstat-doc \
 && apk add procps procps-doc \
 && apk add strace strace-doc \
 && apk add wget wget-doc \
 && apk add curl curl-doc \
 && apk add perf \
 && rm -vrf /var/cache/apk/*
