```mermaid
flowchart LR
App[Private Workload] --> Endpoint[VPC Endpoint]
Endpoint --> Service[AWS Service]
App -. alternative .-> NAT[NAT Gateway]
NAT --> Internet
```