#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILD_SRC="${ROOT_DIR}/.build-src"

rm -rf "${BUILD_SRC}"
mkdir -p "${BUILD_SRC}"

tar -C "${ROOT_DIR}" \
  --exclude=".git" \
  --exclude="node_modules" \
  --exclude=".build-src" \
  --exclude="_site" \
  --exclude="_book" \
  -cf - . | tar -C "${BUILD_SRC}" -xf -

while IFS= read -r -d '' file; do
  perl -i -pe 's/\{\%\s*embed\s+url="([^"]+)"\s*\%\}/[Embedded link]($1)/g' "${file}"
  perl -i -pe 's/\{\%\s*hint[^%]*\%\}//g; s/\{\%\s*endhint\s*\%\}//g' "${file}"
done < <(find "${BUILD_SRC}" -type f -name "*.md" -print0)

echo "Prepared markdown in ${BUILD_SRC}"
