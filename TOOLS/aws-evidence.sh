#!/usr/bin/env bash
set -euo pipefail
echo '=== Identity ==='; aws sts get-caller-identity
echo '=== Region ==='; aws configure get region || true
echo '=== Availability Zones ==='; aws ec2 describe-availability-zones --query 'AvailabilityZones[].{Name:ZoneName,State:State}' --output table