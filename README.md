# Docker Image for WireGuard

## Installation

```bash
docker pull ghcr.io/andreygubarev/wireguard:latest
```

## Usage

```bash
docker run \
    --name wireguard \
    --cap-add NET_ADMIN \
    --sysctl "net.ipv4.conf.all.src_valid_mark=1" \
    -v "$(pwd)/wg0.conf:/etc/wireguard/wg0.conf:ro" \
    ghcr.io/andreygubarev/wireguard:latest
```

# References

- Patch for `src_valid_mark` sysctl: https://lists.zx2c4.com/pipermail/wireguard/2023-February/007936.html

