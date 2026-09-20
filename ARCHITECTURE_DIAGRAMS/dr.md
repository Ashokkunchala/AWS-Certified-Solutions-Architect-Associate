```mermaid
flowchart LR
Primary[Region A] --> Replication[Data Replication]
Replication --> Standby[Region B]
Users --> DNS[Route 53]
DNS --> Primary
DNS -. failover .-> Standby
```