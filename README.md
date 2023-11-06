# Docker Image for WireGuard

## Installation

```bash
docker pull ghcr.io/andreygubarev/wireguard:latest
```

## Usage

```bash
docker run --rm \
    --cap-add NET_ADMIN \
    --cap-add SYS_MODULE \
    -v "$(pwd)/wg0.conf:/etc/wireguard/wg0.conf:ro" \
    --sysctl="net.ipv4.conf.all.src_valid_mark=1" \
    ghcr.io/andreygubarev/wireguard:latest
```
