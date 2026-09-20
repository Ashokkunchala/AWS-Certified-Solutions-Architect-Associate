```mermaid
flowchart TB
Users --> Route53 --> ALB
ALB --> App1[Private App AZ-A]
ALB --> App2[Private App AZ-B]
App1 --> DB[(Multi-AZ Database)]
App2 --> DB
```