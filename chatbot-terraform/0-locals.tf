locals {
  content = jsondecode(file("chatbot-menu-items.json"))
  role_name = var.environment == "prod" ? "vwt-role-chatbots-prod" : "vwt-role-chatbots-nprod"
  upperCase = upper(var.environment)
  bot_name  = var.environment == "dev" ? "vwt_corp_chatbot_latis" : "vwt_corp_chatbot_latis${local.upperCase}"
  api_name  = var.environment == "dev" ? "getTranslation" : "getTranslation${local.upperCase})"

}


