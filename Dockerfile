# syntax=docker/dockerfile:1
FROM debian:bookworm-slim
LABEL org.opencontainers.image.title="wireguard"
LABEL org.opencontainers.image.description="Docker image for WireGuard"
LABEL org.opencontainers.image.authors="Andrey Gubarev <andrey@andreygubarev.com>"

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
        iproute2 \
        iptables \
        nftables \
        wireguard-tools \
        tini \
    && rm -rf /var/lib/apt/lists/*

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
