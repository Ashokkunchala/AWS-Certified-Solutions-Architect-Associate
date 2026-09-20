```mermaid
flowchart LR
Users --> DNS[Route 53]
DNS --> CF[CloudFront]
CF --> WAF[WAF]
WAF --> ALB
ALB --> App[Multi-AZ Application]
App --> Data[(Data Tier)]
```