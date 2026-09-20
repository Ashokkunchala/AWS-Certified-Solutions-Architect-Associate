# Lab 04 — RDS Resilience

This lab intentionally defaults to single-AZ to reduce cost. Change multi_az to true in a controlled experiment and compare availability and cost.

Never commit passwords. Supply the password through a local tfvars file or an environment-backed workflow.

Compare Multi-AZ for failover, read replicas for read scaling, automated backups for point-in-time recovery, and Aurora for managed relational workloads.

Destroy the database after testing.