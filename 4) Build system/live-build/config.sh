#!/usr/bin/env bash
set -euo pipefail
lb config \
  --mode debian \
  --distribution bookworm \
  --architectures amd64 \
  --binary-images iso-hybrid \
  --bootappend-live "boot=live username=sgqos quiet splash" \
  --linux-flavours amd64
