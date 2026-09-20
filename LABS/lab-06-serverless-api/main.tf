terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 6.0" }
    archive = { source = "hashicorp/archive", version = "~> 2.7" }
  }
}
provider "aws" { region = var.region }
variable "region" { type = string; default = "us-east-1" }
resource "aws_dynamodb_table" "items" { name = "saa-api-items"; billing_mode = "PAY_PER_REQUEST"; hash_key = "id"; attribute { name = "id"; type = "S" } }
data "aws_iam_policy_document" "assume" { statement { actions = ["sts:AssumeRole"]; principals { type = "Service"; identifiers = ["lambda.amazonaws.com"] } } }
resource "aws_iam_role" "api" { name = "saa-api-role"; assume_role_policy = data.aws_iam_policy_document.assume.json }
resource "aws_iam_role_policy" "api" { role = aws_iam_role.api.id; policy = jsonencode({ Version = "2012-10-17", Statement = [{ Effect = "Allow", Action = ["logs:CreateLogGroup","logs:CreateLogStream","logs:PutLogEvents"], Resource = "*" }, { Effect = "Allow", Action = ["dynamodb:PutItem","dynamodb:GetItem","dynamodb:DeleteItem"], Resource = aws_dynamodb_table.items.arn }] }) }
data "archive_file" "api" { type = "zip"; output_path = "${path.module}/api.zip"; source_file = "${path.module}/handler.py" }
resource "aws_lambda_function" "api" { function_name = "saa-api"; role = aws_iam_role.api.arn; runtime = "python3.12"; handler = "handler.handler"; filename = data.archive_file.api.output_path; source_code_hash = data.archive_file.api.output_base64sha256; environment { variables = { TABLE_NAME = aws_dynamodb_table.items.name } } }
resource "aws_apigatewayv2_api" "api" { name = "saa-api"; protocol_type = "HTTP" }
resource "aws_apigatewayv2_integration" "api" { api_id = aws_apigatewayv2_api.api.id; integration_type = "AWS_PROXY"; integration_uri = aws_lambda_function.api.invoke_arn; payload_format_version = "2.0" }
resource "aws_apigatewayv2_route" "default" { api_id = aws_apigatewayv2_api.api.id; route_key = "ANY /items/{id}"; target = "integrations/${aws_apigatewayv2_integration.api.id}" }
resource "aws_apigatewayv2_stage" "default" { api_id = aws_apigatewayv2_api.api.id; name = "$default"; auto_deploy = true }
resource "aws_lambda_permission" "api" { statement_id = "AllowHttpApi"; action = "lambda:InvokeFunction"; function_name = aws_lambda_function.api.function_name; principal = "apigateway.amazonaws.com"; source_arn = "${aws_apigatewayv2_api.api.execution_arn}/*/*" }
output "api_endpoint" { value = aws_apigatewayv2_api.api.api_endpoint }
