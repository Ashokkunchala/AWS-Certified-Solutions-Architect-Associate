# Day 3 — Organizations and SCPs

## Lab
In a sandbox organization, model:
- management account
- security account
- workload account

Write an SCP that prevents a selected action, then verify that an IAM permission cannot override the SCP.

## Key principle
An SCP defines the maximum available permissions for principals in an affected account; it does not itself grant permissions.