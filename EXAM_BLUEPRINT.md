# SAA-C03 Exam Blueprint

## Exam structure
AWS currently describes 65 questions: 50 scored and 15 unscored. Question types are multiple choice and multiple response. Unanswered questions are scored as incorrect. Passing scaled score: 720.

## Domain 1 — Design Secure Architectures — 30%
Tasks include secure access, secure workloads/applications, and data-security controls.

Focus:
IAM roles/policies, least privilege, Organizations/SCPs, IAM Identity Center, KMS, Secrets Manager, Parameter Store, S3 protection, VPC security, WAF, CloudFront and audit logging.

## Domain 2 — Design Resilient Architectures — 26%
Tasks include scalable/loosely coupled and highly available/fault-tolerant architectures.

Focus:
Multi-AZ, Auto Scaling, ELB, SQS/SNS/EventBridge, retries/DLQs/idempotency, RDS Multi-AZ, Aurora, DynamoDB resilience, Route 53, backup/restore and DR.

## Domain 3 — Design High-Performing Architectures — 24%
Tasks cover scalable storage, elastic compute, database performance, network performance, and ingestion/transformation.

Focus:
S3/EBS/EFS, EC2, Lambda, containers, Aurora/RDS/DynamoDB/ElastiCache, CloudFront, VPC networking, Kinesis, Glue and Athena.

## Domain 4 — Design Cost-Optimized Architectures — 20%
Tasks cover storage, compute, database and network cost.

Focus:
right-sizing, Savings Plans/Reserved concepts, Spot, S3 lifecycle/tiering, EBS choices, serverless economics, database capacity, NAT/endpoint trade-offs, CloudFront, Cost Explorer and Budgets.

## Scenario framework
**Requirement → Constraint → Workload → Service capability → Architecture pattern → Trade-off → Elimination**