```mermaid
flowchart TB
Users --> ALB
ALB --> A1[App AZ-A]
ALB --> A2[App AZ-B]
A1 --> DB[(Managed DB)]
A2 --> DB
A1 --> Cache[(Cache)]
A2 --> Cache
```