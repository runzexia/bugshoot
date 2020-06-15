FROM alpine:edge
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories \
 && sed -i 's/cdn/3/' /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add man \
 && apk add bash bash-doc \
 && apk add sysstat sysstat-doc \
 && apk add procps procps-doc \
 && apk add strace strace-doc \
 && apk add perf \
 && rm -vrf /var/cache/apk/*

CMD["sh"]
