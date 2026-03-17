#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

cd "${ROOT_DIR}"
npm run prepare:content
rm -rf _site
honkit build .build-src "${ROOT_DIR}/_site"

echo "Built static site in ${ROOT_DIR}/_site"
