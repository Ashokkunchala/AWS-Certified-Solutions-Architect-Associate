# Cleanup Checklist

Before leaving a lab:
- destroy Terraform resources
- verify EC2 instances are gone
- verify load balancers/target groups are gone
- verify NAT gateways are gone
- verify RDS resources/snapshots are intentional
- verify S3 objects and versions are removed where appropriate
- inspect Cost Explorer later for unexpected usage
- remove temporary IAM users/roles/policies created only for the lab