```mermaid
flowchart LR
Client --> API[API Gateway]
API --> Lambda
Lambda --> Event[EventBridge/SNS]
Event --> Queue[SQS]
Queue --> Worker[Lambda or ECS]
Worker --> DB[(DynamoDB/RDS)]
```