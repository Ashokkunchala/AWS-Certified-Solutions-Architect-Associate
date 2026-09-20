# SAA-C03 Troubleshooting Drills

## Drill 1 — Private instance cannot reach S3
Check route tables, NAT, endpoint configuration, security groups and DNS.

## Drill 2 — ALB returns 503
Check target health, listener rules, SGs, target ports, readiness and subnet reachability.

## Drill 3 — Messages are lost or duplicated
Check SQS visibility timeout, retries, DLQ, consumer failures and idempotency.

## Drill 4 — Database outage
Decide whether the requirement calls for Multi-AZ failover, read scaling or broader DR.

## Drill 5 — NAT cost spike
Trace traffic paths and identify supported private-service access that can avoid NAT traversal.

## Drill 6 — S3 exposure
Inspect Block Public Access, bucket policy, access points and identity permissions.

## Drill 7 — Traffic spike
Locate bottleneck; consider scaling, load balancing, queueing, caching or datastore changes.

## Drill 8 — Regional outage
Given an RTO/RPO, identify pre-positioned infrastructure, replicated data and failover mechanics.