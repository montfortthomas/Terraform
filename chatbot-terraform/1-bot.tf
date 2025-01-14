resource "aws_lambda_permission" "allow_cloudwatch" {
  statement_id  = "AllowExecutionFromLex"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.translate.function_name
  principal     = "lex.amazonaws.com"
  source_arn    = "arn:aws:lex:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:intent:${local.bot_name}:*"
}

resource "aws_lex_bot" "vwt_corp_chatbot_latis_iat_one" {
  abort_statement {
    message {
      content_type = "PlainText"
      content      = "Sorry, I could not understand. Please type 'Help'"
    }
  }

  child_directed = false

  clarification_prompt {
    max_attempts = 2

    message {
      content_type = "PlainText"
      content      = "Sorry, what can I help you with?"
    }
  }

  description                 = "Bot to chat"
  detect_sentiment            = false
  idle_session_ttl_in_seconds = 600

  intent {
    intent_name    = aws_lex_intent.LATIS_greetingUser.name
    intent_version = aws_lex_intent.LATIS_greetingUser.version
  }

  locale           = "en-US"
  name             = local.bot_name
  process_behavior = "BUILD"
  voice_id         = "Salli"
}
