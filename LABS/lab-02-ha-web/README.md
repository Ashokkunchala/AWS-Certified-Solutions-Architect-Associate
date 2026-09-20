# Lab 02 — Highly Available Web Tier

This is a disposable learning stack using the default VPC. For production, build a dedicated VPC and private application subnets.

## Architecture

Internet → ALB → Auto Scaling Group → EC2 across available subnets.

## Validate

- Confirm two or more AZs are represented by the selected subnets.
- Check ALB target health.
- Terminate one instance and observe replacement.
- Explain how the ALB continues routing during instance replacement.

## Compare

Explain when to use ALB, NLB and CloudFront. Explain why an Auto Scaling Group is not a substitute for a load balancer.

## Cost safety

This lab creates billable EC2 and ALB resources. Destroy immediately after testing.