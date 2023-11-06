#!/usr/bin/env bash
set -eux

if [ ! -f /etc/wireguard/wg0.conf ]; then
    echo "wg0.conf not found, exiting"
    exit 1
fi

wg-quick up wg0

on_interrupt() {
    wg-quick down wg0
    exit 0
}
trap on_interrupt SIGTERM SIGINT SIGQUIT
sleep infinity & wait
