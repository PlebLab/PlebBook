#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

cd "${ROOT_DIR}"

if [ ! -f package-lock.json ]; then
  npm install
else
  npm ci
fi

npm run build
docker compose up -d caddy

echo "PlebBook deployed. Verify: https://plebbook.com"
