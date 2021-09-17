resource "aws_lex_intent" "indents" {
  for_each       = var.indents
  name           = "${each.key}_${var.environment}"
  create_version = lookup(each.value, "create_version", false)
  description    = lookup(each.value, "description", null)

	fulfillment_activity {
		type = lookup(each.value, "type", "CodeHook") 
		code_hook {
			uri = lookup(each.value, "uri")
			message_version = lookup(each.value, "message_version", "1.0")
		}
	}

  # confirmation_prompt {
  #   max_attempts = lookup(each.value, "max_attempts")
  #   message {
  #     content      = lookup(each.value, "confirmation_prompt_content")
  #     content_type = lookup(each.value, "confirmation_prompt_content_type")
  #   }
  # }

  # rejection_statement {
  #   message {
  #     content      = lookup(each.value, "rejection_statement_content")
  #     content_type = lookup(each.value, "rejection_statement_content_type")
  #   }
  # }

  parent_intent_signature = lookup(each.value, "parent_intent_signature", null)
  sample_utterances = lookup(each.value, "sample_utterances", [])
  
  dynamic "slot" {
    for_each = lookup(each.value, "slot", [])
    content  {
      name = lookup(each.value, "slot_name")
      slot_constraint = lookup(each.value, "slot_constraint")
      slot_type = lookup(each.value, "slot_type")
      slot_type_version = lookup(each.value, "slot_type_version")
      priority = lookup(each.value, "priority")
      value_elicitation_prompt {
			message {
				content_type = lookup(each.value, "message_content_type")
				content = lookup(each.value, "message_content")
			}
			max_attempts = lookup(each.value, "message_max_attempts")
		}
    }
  }

}


data "aws_region" "current" {}
data "aws_caller_identity" "current" {}
