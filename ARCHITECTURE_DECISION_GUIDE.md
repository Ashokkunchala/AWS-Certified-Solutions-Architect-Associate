# Architecture Decision Guide

## 1. Extract the requirement
Write the scenario as one sentence.

## 2. Extract hard constraints
Examples:
- private database
- minimal operations
- encryption at rest
- unpredictable traffic
- regional failure tolerance
- lowest cost
- near-real-time processing

## 3. Classify the workload
Request/response, batch, streaming, event-driven, object, relational, key-value/document, file, analytics.

## 4. Choose primitives
Route 53, CloudFront, WAF, ALB/NLB, Auto Scaling, Lambda, SQS/SNS/EventBridge, S3, RDS/Aurora, DynamoDB, ElastiCache, IAM and KMS.

## 5. Eliminate distractors
Watch for:
- public exposure when private access is required
- synchronous coupling when asynchronous is required
- scaling the wrong layer
- wrong database for the access pattern
- unnecessary complexity
- Multi-AZ used for a regional-failure requirement
- read replica confused with failover
- stateful/stateless network behavior confused

## 6. State the trade-off
Finish with:
“This design meets X because ..., while accepting Y because ...”