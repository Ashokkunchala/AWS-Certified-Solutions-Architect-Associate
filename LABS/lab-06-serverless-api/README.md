# Lab 06 — API Gateway + Lambda + DynamoDB

Build a minimal HTTP API: client → API Gateway → Lambda → DynamoDB.

Validate GET, write and DELETE operations and inspect CloudWatch logs.

Failure drill: temporarily remove a DynamoDB permission, invoke the API, diagnose the 5xx from logs, restore least privilege and retest.

Compare HTTP API with REST API and explain the trade-offs.