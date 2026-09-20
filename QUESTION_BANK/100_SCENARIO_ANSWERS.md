# 100 Scenario Answer Key

Use only after attempting the scenarios.

| # | Core answer |
|---:|---|
| 1 | Evaluate an S3 VPC endpoint for private supported-service access. |
| 2 | IAM role with temporary credentials. |
| 3 | S3 Block Public Access. |
| 4 | Private subnet plus restrictive security group. |
| 5 | Secrets Manager when managed secret lifecycle/rotation is required. |
| 6 | KMS customer-managed key where control requirements justify it. |
| 7 | CloudTrail. |
| 8 | AWS WAF. |
| 9 | SCP. |
| 10 | Least-privilege IAM policy scoped to the required prefix. |
| 11 | Public/private subnet separation with controlled routes and SGs. |
| 12 | Network ACL. |
| 13 | Security group. |
| 14 | IAM Identity Center / centralized workforce identity. |
| 15 | Managed secret/parameter service plus IAM role. |
| 16 | EBS encryption using KMS-backed encryption. |
| 17 | Block Public Access plus restrictive policies. |
| 18 | Applicable VPC endpoint. |
| 19 | AWS Config. |
| 20 | GuardDuty or relevant detection controls. |
| 21 | IAM role. |
| 22 | Explicit deny overrides an allow. |
| 23 | ALB/NLB TLS listener as appropriate. |
| 24 | Private subnet → NAT for public outbound access. |
| 25 | AWS Organizations/account boundaries. |
| 26 | Multi-AZ deployment with health-based traffic distribution. |
| 27 | Durable queue such as SQS. |
| 28 | DLQ plus controlled retry/redrive. |
| 29 | RDS Multi-AZ/Aurora availability features according to workload. |
| 30 | Read replica for read scaling; cache for repeated hot reads. |
| 31 | Region is a separate failure domain; use cross-Region DR when required. |
| 32 | Route 53 health-aware routing. |
| 33 | Stateless instances behind load balancing and Auto Scaling. |
| 34 | Timeouts, retries with backoff and decoupling where appropriate. |
| 35 | Idempotent consumer using a durable idempotency record/key. |
| 36 | Asynchronous queue-based separation. |
| 37 | Durable queue/buffer. |
| 38 | RDS automated backups/PITR where supported and configured. |
| 39 | Strong replication/standby strategy aligned to the stated RTO/RPO. |
| 40 | Backup/restore or lower-cost DR if the stated RTO/RPO permits it. |
| 41 | ALB removes unhealthy targets from routing. |
| 42 | Auto Scaling can replace capacity; multi-AZ preserves service capacity. |
| 43 | Message becomes visible again after visibility timeout unless deleted/extended. |
| 44 | Design consumers to tolerate duplicate delivery. |
| 45 | Route 53 failover plus a prepared regional target. |
| 46 | Durable origin + CDN/replication strategy according to RTO. |
| 47 | Asynchronous messaging/event-driven decoupling. |
| 48 | Step Functions or equivalent workflow orchestration. |
| 49 | Timeouts, retries/backoff and isolation of downstream failure. |
| 50 | Backup policy + documented tested recovery procedure. |
| 51 | CloudFront. |
| 52 | ElastiCache or application caching depending on access pattern. |
| 53 | ALB. |
| 54 | NLB. |
| 55 | S3. |
| 56 | EFS when shared file semantics are required. |
| 57 | EBS. |
| 58 | DynamoDB. |
| 59 | RDS/Aurora. |
| 60 | ElastiCache. |
| 61 | Auto Scaling/serverless depending on workload and operational requirements. |
| 62 | Lambda. |
| 63 | API Gateway. |
| 64 | CloudFront. |
| 65 | Evaluate VPC endpoints for supported services. |
| 66 | Read replicas and/or caching according to access pattern. |
| 67 | Compute-optimized EC2 family concept. |
| 68 | Memory-optimized EC2 family concept. |
| 69 | EFS. |
| 70 | S3. |
| 71 | Spot Instances. |
| 72 | Step Functions. |
| 73 | Kinesis or another appropriate streaming service. |
| 74 | Athena/Glue and serverless analytics patterns where suitable. |
| 75 | CloudFront caching. |
| 76 | Savings Plans/Reserved options depending on commitment pattern. |
| 77 | Spot. |
| 78 | S3 lifecycle transitions. |
| 79 | Right-size, schedule or remove idle resources. |
| 80 | Analyze NAT traffic and endpoint alternatives. |
| 81 | CloudFront can reduce origin load and change data-transfer patterns. |
| 82 | Right-size after measuring workload requirements. |
| 83 | Schedule non-production resources. |
| 84 | Lifecycle/retention policy. |
| 85 | Compare invocation-based serverless economics with fixed capacity. |
| 86 | Workers scale with demand instead of staying fully provisioned. |
| 87 | Evaluate caching before unnecessary database scaling. |
| 88 | Analyze replication and cross-Region data-transfer requirements. |
| 89 | Tier/expire logs using retention policies. |
| 90 | Multi-AZ may meet the stated failure domain without regional complexity. |
| 91 | Compare DR strategies against RTO/RPO and budget. |
| 92 | Evaluate applicable VPC endpoints. |
| 93 | Choose S3 class from access frequency, retrieval and cost requirements. |
| 94 | Combine committed baseline capacity with elastic/Spot capacity where appropriate. |
| 95 | Compare serverless against always-on capacity for irregular workloads. |
| 96 | Schedule or use lower-cost development capacity where requirements permit. |
| 97 | Inventory and remove unused network/public resources. |
| 98 | Tags, cost allocation and budgets. |
| 99 | Prefer the simplest architecture that satisfies all requirements. |
| 100 | Make reliability/cost trade-offs explicit against business RTO/RPO and service requirements. |

## Review rule

An answer is not mastered until you can explain **why the nearest alternative is wrong**.