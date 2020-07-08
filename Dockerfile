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
 && apk add hping3 hping3-doc \
 && apk add vim vim-doc \
 && apk add tcpdump tcpdump-doc \
 && apk add bcc-tools bcc-doc \
 && apk add lsof lsof-doc \
 && apk add iotop iotop-doc \
 && apk add perf \
 && rm -vrf /var/cache/apk/* \
 # for bcc-tools
 && ln -s $(which python3) /usr/bin/python

COPY top.rc /root/.config/procps/toprc

ENV PATH="/usr/share/bcc/tools:${PATH}"