#!/usr/bin/env bash
set -eux

if [ ! -f /etc/wireguard/wg0.conf ]; then
    echo "wg0.conf not found, exiting"
    exit 1
fi

wg-quick up wg0
sleep infinity
