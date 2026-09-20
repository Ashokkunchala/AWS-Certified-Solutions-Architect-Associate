terraform { required_providers { aws = { source="hashicorp/aws" version="~> 6.0" } } }
provider "aws" { region=var.region }
variable "region" { type=string default="us-east-1" }
# Use the AWS default VPC only for a disposable learning exercise. Replace with a dedicated VPC module for production.
data "aws_vpc" "default" { default=true }
data "aws_subnets" "default" { filter { name="vpc-id" values=[data.aws_vpc.default.id] } }
output "subnets" { value=data.aws_subnets.default.ids }