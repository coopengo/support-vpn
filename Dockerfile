FROM debian:8

RUN apt-get update -y \
    && apt-get install -y vim git vpnc socat \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY docker-entrypoint /usr/bin/

WORKDIR /root

ENTRYPOINT ["docker-entrypoint"]
