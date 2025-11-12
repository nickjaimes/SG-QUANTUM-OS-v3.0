#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
cd live-build

bash ./auto/clean || true
bash ./auto/config
sudo lb build

cd ..
mkdir -p ../dist
mv live-image-amd64.hybrid.iso ../dist/SGQOS-bookworm-amd64.iso
cd ..
pushd dist
sha256sum SGQOS-bookworm-amd64.iso > SGQOS-bookworm-amd64.sha256
popd

echo "ISO ready: dist/SGQOS-bookworm-amd64.iso"
