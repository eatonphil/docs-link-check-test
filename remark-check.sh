#!/bin/sh

set -eu

docker run -v "$(pwd)":/build -w /tmp node:19 bash -c "
set -eux
npm install remark-cli@^11.0.0 remark-validate-links@^12.1.0

# Validate links
npx remark --use remark-validate-links --frail /build
"
