# syntax=docker/dockerfile:1
FROM debian:bookworm-slim
LABEL org.opencontainers.image.title="wireguard"
LABEL org.opencontainers.image.description="Docker image for WireGuard"
LABEL org.opencontainers.image.authors="Andrey Gubarev <andrey@andreygubarev.com>"

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -yq --no-install-recommends \
        iproute2 \
        iptables \
        openresolv \
        procps \
        wireguard-tools \
        tini \
    && rm -rf /var/lib/apt/lists/*

COPY scripts/wg-quick.sh /usr/bin/wg-quick
COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
