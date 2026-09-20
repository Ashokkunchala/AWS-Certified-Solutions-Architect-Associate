# SAA-C03 Capstone — Production E-Commerce Platform

## Requirements
- public web application
- private application/database tiers
- burst traffic
- durable order processing
- encryption
- centralized observability
- controlled access
- backup and disaster recovery
- cost visibility

## Reference architecture
Route 53 → CloudFront/WAF → ALB → Auto Scaling application tier → SQS → database selected from access pattern → S3 for objects → CloudWatch/CloudTrail → KMS/IAM.

For cross-Region recovery, document what is replicated, how failover occurs and the target RTO/RPO.

## Deliverables
1. architecture diagram
2. requirements-to-service mapping
3. security model
4. availability/failure analysis
5. performance analysis
6. cost model
7. deployment plan
8. monitoring/alarms
9. failure injection exercise
10. recovery runbook
11. five Architecture Decision Records

## Defense questions
Why this load balancer? Why this database? Why async processing? Where is encryption applied? What happens when an AZ fails? What happens when a Region fails? What is the RTO/RPO? What is the largest cost driver? How can operations be reduced?