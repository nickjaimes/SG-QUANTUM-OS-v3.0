#!/usr/bin/env bash
set -euo pipefail
ISO="${1:-dist/SGQOS-bookworm-amd64.iso}"
SUM="${2:-dist/SGQOS-bookworm-amd64.sha256}"
sha256sum -c "$SUM"
echo "Checksum OK for $ISO"
