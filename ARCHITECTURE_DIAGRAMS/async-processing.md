```mermaid
flowchart LR
Producer --> Q[SQS]
Q --> W1[Worker A]
Q --> W2[Worker B]
Q --> DLQ[Dead Letter Queue]
W1 --> DB[(Database)]
W2 --> DB
```