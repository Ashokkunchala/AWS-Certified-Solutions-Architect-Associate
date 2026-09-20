# Hands-On Labs

Use a sandbox AWS account, least-privilege permissions and cleanup after each lab.

## LAB-01 — Secure S3 + CloudFront
Private bucket, encryption, versioning, lifecycle and CloudFront using the current origin-access pattern.

Evidence: private bucket, HTTPS delivery, blocked direct public access.

## LAB-02 — Highly available web tier
Route 53 → ALB → Auto Scaling EC2 across two AZs → database.

Failure test: terminate one application instance and observe replacement.

## LAB-03 — Private application tier
Public load balancer with private application instances. Allow only required SG-to-SG traffic.

## LAB-04 — Queue decoupling
Producer → SQS → workers + DLQ. Inject failed processing and inspect redrive behavior.

## LAB-05 — Serverless API
API Gateway → Lambda → DynamoDB with logs and alarms.

## LAB-06 — RDS resilience
Create Multi-AZ RDS and compare its purpose with read replicas.

## LAB-07 — Global delivery
CloudFront cache behavior, invalidation and origin protection.

## LAB-08 — Cost investigation
Tag resources, inspect Cost Explorer, create a budget, record one optimization.

## LAB-09 — Private AWS access
Compare NAT traffic with an applicable VPC endpoint design and document security/cost implications.

## LAB-10 — Architecture-first challenge
Given a new requirement, draw and justify the architecture before building it.