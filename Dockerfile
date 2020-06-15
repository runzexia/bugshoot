FROM debian:buster-slim
RUN apt-get update \
 && apt-get install -y bash \
 && apt-get install -y sysstat \
 && apt-get install -y procps \
 && apt-get install -y strace \
 && apt-get install -y curl \
 && apt-get install -y linux-perf linux-base \
 && apt-get install -y apache2-utils \
 && rm -rf /var/lib/apt/lists/*

WORKDIR "/home"

CMD ["bash"]
