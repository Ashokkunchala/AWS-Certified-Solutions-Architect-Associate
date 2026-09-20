# SAA-C03 Exam Playbook

## Read for signals
Identify workload, hard constraints, availability, performance, security, cost and operations requirements.

## Common traps
### Multi-AZ vs Multi-Region
Multi-AZ addresses AZ failure; Multi-Region is relevant when regional failure/geographic separation is required.

### Multi-AZ vs read replica
Multi-AZ is an availability/failover pattern; read replicas primarily address read scaling and replication.

### Security Group vs NACL
Security groups are stateful and associated with network interfaces; NACLs apply at subnet level and are stateless.

### SQS vs SNS vs EventBridge
SQS provides durable queues, SNS is commonly used for pub/sub fan-out, EventBridge provides event routing/integration.

### Complexity trap
Do not select extra moving parts unless the requirements justify them.

## Timing
The exam time is 130 minutes. Use a three-pass approach: confident, uncertain, final review. Ensure every question has an answer because AWS states unanswered questions are scored as incorrect.

## Readiness
Be able to explain why each incorrect option fails the stated requirement.