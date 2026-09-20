terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 6.0" }
    archive = { source = "hashicorp/archive", version = "~> 2.7" }
  }
}
provider "aws" { region = var.region }
variable "region" { type = string; default = "us-east-1" }
resource "aws_sqs_queue" "dlq" { name = "saa-worker-dlq" }
resource "aws_sqs_queue" "work" { name = "saa-worker"; visibility_timeout_seconds = 60; redrive_policy = jsonencode({ deadLetterTargetArn = aws_sqs_queue.dlq.arn, maxReceiveCount = 3 }) }
resource "aws_dynamodb_table" "state" { name = "saa-worker-state"; billing_mode = "PAY_PER_REQUEST"; hash_key = "id"; attribute { name = "id"; type = "S" } }
data "aws_iam_policy_document" "lambda_assume" { statement { actions = ["sts:AssumeRole"]; principals { type = "Service"; identifiers = ["lambda.amazonaws.com"] } } }
resource "aws_iam_role" "worker" { name = "saa-worker-role"; assume_role_policy = data.aws_iam_policy_document.lambda_assume.json }
resource "aws_iam_role_policy" "worker" { role = aws_iam_role.worker.id; policy = jsonencode({ Version = "2012-10-17", Statement = [{ Effect = "Allow", Action = ["logs:CreateLogGroup","logs:CreateLogStream","logs:PutLogEvents"], Resource = "*" }, { Effect = "Allow", Action = ["sqs:ReceiveMessage","sqs:DeleteMessage","sqs:GetQueueAttributes"], Resource = aws_sqs_queue.work.arn }, { Effect = "Allow", Action = ["dynamodb:PutItem"], Resource = aws_dynamodb_table.state.arn }] }) }
data "archive_file" "worker" { type = "zip"; output_path = "${path.module}/worker.zip"; source_file = "${path.module}/worker.py" }
resource "aws_lambda_function" "worker" { function_name = "saa-worker"; role = aws_iam_role.worker.arn; runtime = "python3.12"; handler = "worker.handler"; filename = data.archive_file.worker.output_path; source_code_hash = data.archive_file.worker.output_base64sha256; timeout = 30; environment { variables = { TABLE_NAME = aws_dynamodb_table.state.name } } }
resource "aws_lambda_event_source_mapping" "sqs" { event_source_arn = aws_sqs_queue.work.arn; function_name = aws_lambda_function.worker.arn; batch_size = 10; function_response_types = ["ReportBatchItemFailures"] }
output "queue_url" { value = aws_sqs_queue.work.url }
output "dlq_url" { value = aws_sqs_queue.dlq.url }
