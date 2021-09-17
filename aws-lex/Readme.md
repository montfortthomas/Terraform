```hcl


indents = {
  LATIS_TE_AfterApproval = {
    create_version = false
    name           = "LATIS_TE_AfterApproval"
    description    = "Intent to order a bouquet of flowers for pick up"

    # fulfillment_activity
    type         = "CodeHook"
    uri = "arn:aws:lambda:eu-west-1:353874849469:function:vwt-corp-latis-chatbot-iat"
    message_version = "1.0"
    # confirmation_prompt
    # max_attempts = 2
    # confirmation_prompt_content      = "Okay, your {FlowerType} will be ready for pickup by {PickupTime} on {PickupDate}.  Does this sound okay?"
    # confirmation_prompt_content_type = "PlainText"

    # # RejectionStatementContent
    # rejection_statement_content      = "Okay, I will not place your order."
    # rejection_statement_content_type = "PlainText"

    # sample_utterances changes here
    sample_utterances =  [
      "time entry correction after approval",
      "time entry modification after approval",
      "correction of time after approval",
      "correcting time enter after it is approved",
      "want to correct a time entry after approved",
      "after approval how to correct a time entry",
      "steps to correct a time entry after approved",
      "correct a time entry after approved",
      "How do I correct a time entry after it is approved?",
      "time entry has been approved already, how to correct",
      "I made a mistake in my time entry but it has been approved already, what should I do?",
    ]
  },
  LATIS_Vendor_HELP = {
    create_version = false
    name           = "LATIS_Vendor_HELP"
    description    = "Intent to order a bouquet of flowers for pick up"

    # fulfillment_activity
    type         = "CodeHook"
    uri = "arn:aws:lambda:eu-west-1:353874849469:function:vwt-corp-latis-chatbot-iat"
    message_version = "1.0"
    
    # confirmation_prompt
    # max_attempts = 2
    # confirmation_prompt_content      = "Okay, your {FlowerType} will be ready for pickup by {PickupTime} on {PickupDate}.  Does this sound okay?"
    # confirmation_prompt_content_type = "PlainText"

    # # RejectionStatementContent
    # rejection_statement_content      = "Okay, I will not place your order."
    # rejection_statement_content_type = "PlainText"

    # sample_utterances changes here
    sample_utterances =  [
      "need help in vendor",
      "vendor",
      "Help with vendor",
      "Supplier",
    ]
  }
}




```