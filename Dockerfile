# syntax=docker/dockerfile:1
FROM debian:bookworm-slim
LABEL org.opencontainers.image.title="wireguard"
LABEL org.opencontainers.image.description="Docker image for WireGuard"
LABEL org.opencontainers.image.authors="Andrey Gubarev <andrey@andreygubarev.com>"

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
