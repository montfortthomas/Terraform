# lambda.tf
data "archive_file" "translate" {
  type        = "zip"
  source_dir  = "${path.module}/${var.translate_lambda_deployment_folder}"
  output_path = "${path.module}/${var.translate_lambda_deployment_folder}.zip"
}

resource "aws_lambda_function" "translate" {
  function_name = "${var.project}-translate-${var.environment}"
  filename      = "${path.module}/${var.translate_lambda_deployment_folder}.zip"
  handler       = "index.handler"
  runtime       = "nodejs14.x"
  role          = data.aws_iam_role.roles.arn
  timeout       = 30
  vpc_config {
    subnet_ids         = ["subnet-04669fcc2121b4c4b"]
    security_group_ids = ["sg-0cb2452515e4b466f"]
  }
  tags = merge({ Name = "${var.project}-translate-${var.environment}-lambda" }, tomap(var.additional_tags))
}

resource "aws_cloudwatch_log_group" "translate" {
  name              = "/aws/lambda/${var.project}-translate-${var.environment}"
  retention_in_days = 14
}

data "archive_file" "chatbot" {
  type        = "zip"
  source_dir  = "${path.module}/${var.chatbot_lambda_deployment_folder}"
  output_path = "${path.module}/${var.chatbot_lambda_deployment_folder}.zip"
}

resource "aws_lambda_function" "chatbot" {
  function_name = "${var.project}-chatbot-${var.environment}"
  filename      = "${path.module}/${var.chatbot_lambda_deployment_folder}.zip"
  handler       = "index.handler"
  runtime       = "nodejs14.x"
  role          = data.aws_iam_role.roles.arn
  timeout       = 30
  vpc_config {
    subnet_ids         = ["subnet-04669fcc2121b4c4b"]
    security_group_ids = ["sg-0cb2452515e4b466f"]
  }
  tags = merge({ Name = "${var.project}-chatbot-${var.environment}-lambda" }, tomap(var.additional_tags))
}

resource "aws_cloudwatch_log_group" "chatbot" {
  name              = "/aws/lambda/${var.project}-chatbot-${var.environment}"
  retention_in_days = 14
}
