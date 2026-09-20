terraform {
  required_version = ">= 1.6.0"
  required_providers { aws = { source = "hashicorp/aws", version = "~> 6.0" } }
}
provider "aws" { region = var.region }
variable "region" { type = string; default = "us-east-1" }
data "aws_vpc" "default" { default = true }
data "aws_route_tables" "default" { vpc_id = data.aws_vpc.default.id }
resource "aws_vpc_endpoint" "s3" { vpc_id = data.aws_vpc.default.id; service_name = "com.amazonaws.${var.region}.s3"; vpc_endpoint_type = "Gateway"; route_table_ids = data.aws_route_tables.default.ids }
output "s3_endpoint_id" { value = aws_vpc_endpoint.s3.id }
