# AWS Account Safety Guide

These labs can create billable AWS resources. Treat the repository as a learning environment, not a production account.

## Before apply

- Use a dedicated sandbox account when possible.
- Confirm the active AWS account and region.
- Run terraform plan and inspect every create/change/destroy.
- Never commit credentials, passwords, tfvars containing secrets, state files or private keys.
- Set a personal budget and billing alert outside this repository.

## During labs

- Prefer the smallest practical instance sizes.
- Avoid NAT gateways, large databases and multi-region resources unless the exercise requires them.
- Record the start time for every billable lab.
- Destroy resources immediately after the exercise.

## After labs

Run terraform destroy where applicable. Then verify EC2, ALB, RDS, NAT gateways, Elastic IPs, CloudFront distributions, S3 buckets and Lambda/API resources are gone.

## Credentials

Use AWS CLI profiles, SSO or environment variables. Do not put access keys in Terraform files.

## State

Terraform state can contain sensitive infrastructure metadata. Keep state out of Git and use a protected backend for shared environments.