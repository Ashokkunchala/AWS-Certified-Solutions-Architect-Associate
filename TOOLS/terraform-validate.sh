#!/usr/bin/env bash
set -euo pipefail
find LABS -name main.tf -print0 | while IFS= read -r -d '' f; do d=$(dirname "$f"); echo "== $d =="; (cd "$d" && terraform fmt -check && terraform init -backend=false -input=false && terraform validate); done