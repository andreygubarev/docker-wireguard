# Docker Image for WireGuard

## Installation

```bash
docker pull ghcr.io/andreygubarev/wireguard:latest
```

## Usage

```bash
docker run --rm --cap-add net_admin --cap-add sys_module -v $(pwd)/wg0.conf:/etc/wireguard/wg0.conf:ro ghcr.io/andreygubarev/wireguard:latest
```
