# Lab 08 — Production Architecture Capstone

Build a secure, resilient web platform that demonstrates SAA-level architecture reasoning.

## Required components

- Dedicated VPC with public/private subnets
- ALB and scalable compute
- S3 + CloudFront
- SQS + Lambda asynchronous processing
- Managed relational or NoSQL data layer
- IAM least privilege
- CloudWatch observability
- Backup and recovery plan
- Terraform with variables, outputs and reusable modules

## Required evidence

1. Architecture diagram
2. ADRs
3. Terraform plan and validation output
4. Security review
5. Failure drills
6. Cost estimate and optimization notes
7. RTO/RPO statement
8. Recovery runbook
9. Five-minute architecture defense

Break an IAM permission, unhealthy target, queue consumer and data dependency one at a time. Record symptom, evidence, root cause, fix and prevention.

Completion requires explaining every major design choice and comparing it with the closest alternative.