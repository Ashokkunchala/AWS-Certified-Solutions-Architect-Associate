terraform {
  required_version = ">= 1.6.0"
  required_providers { aws = { source = "hashicorp/aws", version = "~> 6.0" } }
}
provider "aws" { region = var.region }
variable "region" { type = string; default = "us-east-1" }
data "aws_vpc" "default" { default = true }
data "aws_subnets" "default" { filter { name = "vpc-id"; values = [data.aws_vpc.default.id] } }
data "aws_ami" "al2023" { most_recent = true; owners = ["137112412989"]; filter { name = "name"; values = ["al2023-ami-2023*-x86_64"] }; filter { name = "state"; values = ["available"] } }
resource "aws_security_group" "web" { name_prefix = "saa-ha-web-"; vpc_id = data.aws_vpc.default.id; ingress { from_port = 80; to_port = 80; protocol = "tcp"; cidr_blocks = ["0.0.0.0/0"] }; egress { from_port = 0; to_port = 0; protocol = "-1"; cidr_blocks = ["0.0.0.0/0"] } }
resource "aws_lb" "web" { name = "saa-ha-web"; load_balancer_type = "application"; subnets = data.aws_subnets.default.ids; security_groups = [aws_security_group.web.id] }
resource "aws_lb_target_group" "web" { name = "saa-ha-web"; port = 80; protocol = "HTTP"; vpc_id = data.aws_vpc.default.id; health_check { path = "/"; matcher = "200-399" } }
resource "aws_launch_template" "web" { name_prefix = "saa-ha-web-"; image_id = data.aws_ami.al2023.id; instance_type = "t3.micro"; vpc_security_group_ids = [aws_security_group.web.id]; user_data = base64encode("#!/bin/bash\ndnf install -y nginx\nsystemctl enable --now nginx\necho '<h1>SAA HA Web</h1>' > /usr/share/nginx/html/index.html") }
resource "aws_autoscaling_group" "web" { name = "saa-ha-web"; min_size = 2; max_size = 4; desired_capacity = 2; vpc_zone_identifier = data.aws_subnets.default.ids; target_group_arns = [aws_lb_target_group.web.arn]; launch_template { id = aws_launch_template.web.id; version = "$Latest" }; health_check_type = "ELB"; health_check_grace_period = 120 }
resource "aws_lb_listener" "http" { load_balancer_arn = aws_lb.web.arn; port = 80; protocol = "HTTP"; default_action { type = "forward"; target_group_arn = aws_lb_target_group.web.arn } }
output "alb_dns_name" { value = aws_lb.web.dns_name }
