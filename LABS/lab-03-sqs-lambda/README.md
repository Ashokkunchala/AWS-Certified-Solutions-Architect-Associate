# Lab 03 — Queue-Based Serverless Processing

Architecture: producer → SQS → Lambda worker → DynamoDB, with an SQS DLQ after repeated failures.

Validate successful messages, forced failures, retries and DLQ delivery.

Study visibility timeout, at-least-once delivery, idempotency and partial batch failure.

Run terraform destroy after the drill.