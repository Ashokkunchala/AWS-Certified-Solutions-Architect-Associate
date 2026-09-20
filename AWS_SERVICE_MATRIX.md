# AWS Service Decision Matrix

| Decision | Choices | Selection signal |
|---|---|---|
| Object/block/file | S3 / EBS / EFS | Object scale / block volume / shared files |
| Relational | RDS / Aurora | Managed relational / Aurora architecture |
| NoSQL | DynamoDB | Key-value/document at scale |
| Cache | ElastiCache | repeated low-latency reads |
| Queue | SQS | durable asynchronous decoupling |
| Pub/sub | SNS | fan-out notifications |
| Event routing | EventBridge | event-driven integration/routing |
| L7 load balancing | ALB | HTTP/HTTPS host/path routing |
| L4 load balancing | NLB | TCP/UDP/TLS + network performance |
| Global delivery | CloudFront / Global Accelerator | edge caching / global network acceleration |
| Private AWS access | VPC Endpoint | private supported-service access |
| Private outbound | NAT Gateway | private subnet → public endpoints |
| DNS | Route 53 | DNS + health/routing |
| Secrets | Secrets Manager / Parameter Store | secret lifecycle/rotation / parameters |
| Compute | EC2 / Lambda / containers | OS control / event-driven / container workload |
| Workflow | Step Functions | stateful orchestration |
| Metrics/logs | CloudWatch | operational telemetry |
| AWS API audit | CloudTrail | account/API activity |

For every comparison ask:
1. What requirement does each satisfy?
2. What constraint is explicit?
3. What operational burden differs?
4. What scaling characteristic differs?
5. What failure mode differs?
6. What cost driver differs?