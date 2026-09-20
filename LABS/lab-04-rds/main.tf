terraform {
  required_version = ">= 1.6.0"
  required_providers { aws = { source = "hashicorp/aws", version = "~> 6.0" } }
}
provider "aws" { region = var.region }
variable "region" { type = string; default = "us-east-1" }
variable "db_name" { type = string; default = "saadb" }
variable "username" { type = string; default = "saauser" }
variable "password" { type = string; sensitive = true }
data "aws_vpc" "default" { default = true }
data "aws_subnets" "default" { filter { name = "vpc-id"; values = [data.aws_vpc.default.id] } }
resource "aws_db_subnet_group" "db" { name = "saa-db"; subnet_ids = data.aws_subnets.default.ids }
resource "aws_db_instance" "db" { identifier = "saa-rds"; engine = "mysql"; instance_class = "db.t3.micro"; allocated_storage = 20; db_name = var.db_name; username = var.username; password = var.password; db_subnet_group_name = aws_db_subnet_group.db.name; publicly_accessible = false; backup_retention_period = 7; skip_final_snapshot = true; multi_az = false }
output "endpoint" { value = aws_db_instance.db.endpoint }
