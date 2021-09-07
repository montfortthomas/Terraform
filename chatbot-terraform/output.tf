output "lambda-translate" {
  value = aws_lambda_function.translate.function_name
}

output "lambda-chatbot" {
  value = aws_lambda_function.chatbot.function_name
}

output "api-gateway-name" {
  value = aws_api_gateway_rest_api.getTranslation.name
}

output "dynamodb-chatbot-name" {
  value = aws_dynamodb_table.chatbot.name
}

output "dynamodb-menu-name" {
  value = aws_dynamodb_table.menu.name
}

output "lambda-iamrole-name" {
  value = data.aws_iam_role.roles.name
}

output "cloudwatch-translate-name" {
  value = aws_cloudwatch_log_group.translate.name
}

output "cloudwatch-chatbot-name" {
  value = aws_cloudwatch_log_group.chatbot.name
}

output "lex-name" {
  value = aws_lex_bot.vwt_corp_chatbot_latis_iat_one.name
}

output "dynamoDb_items_contents" {
  value = local.content.Items[0]
}