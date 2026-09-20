#!/usr/bin/env bash
set -euo pipefail
command -v aws >/dev/null || { echo 'AWS CLI missing'; exit 1; }
command -v terraform >/dev/null || { echo 'Terraform missing'; exit 1; }
command -v jq >/dev/null || { echo 'jq missing'; exit 1; }
aws sts get-caller-identity
terraform version