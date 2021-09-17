environment = "uat"

indents = {
  LATIS_TE_AfterApproval = {
    create_version = false
    name           = "LATIS_TE_AfterApproval"
    description    = "Intent to order a bouquet of flowers for pick up"
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

    ## fulfillment_activity
    # type         = "CodeHook"
    # uri = "arn:aws:lambda:eu-west-1:353874849469:function:vwt-corp-latis-chatbot-iat"
    # message_version = "1.0"

    # sample_utterances changes here
    sample_utterances =  [
      "need help in vendor",
      "vendor",
      "Help with vendor",
      "Supplier",
    ]
  },  
  
  LATIS_MRP = {
    create_version = false
    name           = "LATIS_MRP"
    # sample_utterances changes here
    sample_utterances =  [
      "The item was setup in item branch but failed to generate the purchase order",
      "item was correctly setup in item branch",
      "mrp failed to generate a message even when item was setup in item branch",
      "item was setup in item branch but failed to generate message",
      "correct setup of item in item branch",
      "the item was correctly setup in item branch a ST was created however, the MRP doesn't generate any message",
      "item setup was correct in item branch",
    ]
  },
  LATIS_Time_Entry_TimeWeek = {
    create_version = false
    name           = "LATIS_Time_Entry_TimeWeek"

    # sample_utterances changes here
    sample_utterances =  [
      "the total week is greater than total expected. These  extra  days do not appear in the time entry detail",
      "total week is larger than total expected",
      "extra days does not appear",
      "total expected is less than total week but these days do not appear in time entry details",
      "time entry details does not have these days",
      "extra days not appearing in time entry",
      "total week is greater than expected",
      "extra days is not showing in time entry details",
      "time entry detail does not show extra days",
      "time entry detail is wrong doesn't show extra days",
    ]
  },
  LATIS_AP_VoucherReversal = {
    create_version = false
    name           = "LATIS_AP_VoucherReversal"
    # sample_utterances changes here
    sample_utterances =  [
      "unable to void or reverse the paid voucher",
      "cannot cancel the paid invoice",
      "Paid Invoice is not cancellable",
      "how to void the paid invoice",
      "cancelling the invoice is not possible",
      "Cancel receipt",
      "reverse the paid invoice is giving error",
      "error in cancelling the invoice",
      "Cancellation of Invoice",
    ]
  },
  LATIS_AP_BatchPosting = {
    create_version = false
    name           = "LATIS_AP_BatchPosting"
    # sample_utterances changes here
    sample_utterances =  [
      "The batch doesnt get posted or is in error",
      "There is an error is batch or it is not posted",
      "The batch does not get posted or there is a mistake",
      "error in batch or it has not posted",
      "unable to post a batch",
      "batch posting error",
      "can you help me in fixing the batch posting error",
      "need help in fixing the batch post error",
      "error in batch post",
      "batch is not getting posted",
      "Batch validation error",
      "I am not able to publish the batch",
      "problem in batch imputation",
      "unable to post a lot",
      "lot posting error",
      "error in publishing a lot",
      "error in booking a batch",
      "impossible to book a batch",
      "incorrect batch posting",
      "lot is in error",
      "my lot is in error",
    ]
  },
  LATIS_PO_Creation = {
    create_version = false
    name           = "LATIS_PO_Creation"
    # sample_utterances changes here
    sample_utterances =  [
      "'Item has Purchasing Restrictions' error message when creating a purchase order PO",
      "purchase restriction error in creating a po",
      "getting a purchase restriction error message while creating a purchase order",
      "need help in fixing item has purchasing restriction error",
      "getting purchase restriction error message",
      "While creating a PO getting a purchasing restrictions message",
      "need help in resolving purchasing restriction error message",
      "item has purchasing restriction error",
      "can you help in fixing purchasing restriction error",
    ]
  }

  LATIS_AP_Match = {
    create_version = false
    name           = "LATIS_AP_Match"
    sample_utterances =  [
      "I cannot match the Account Payable voucher with the purchase order or purchase order receipt",
      "ap voucher not matching with the po",
      "po not matching with the accounts payable voucher",
      "need help in matching ap voucher with po",
      "unable to match AP voucher with purchase order",
      "I need to match accounts payable voucher with PO. can you help",
      "matching accounts payable with purchase order",
      "matching error of accounts payable voucher with pi",
      "ap voucher matching issue with purchase order",
      "cannot match invoice to the order",
      "invoice and order cannot be matched",
      "cannot post receipt to the invoice",
      "unable to assign purchase order with invoice",
      "error in invoice and orders match",
    ]
  },
  LATIS_JC_Scheduling = {
    create_version = false
    name           = "LATIS_JC_Scheduling"
    # sample_utterances changes here
    sample_utterances =  [
      "It is impossible to modify the scheduled amount on a line",
      "I want to modify the scheduling amount",
      "Help with modify the scheduling amount",
      "I need to modify the scheduling amount",
      "modify the scheduling amount on a line",
      "How to modify scheduling amount on a line",
      "Modify of the schedule amount on a line is not possible",
    ]
  },

  LATIS_PoReceipt_LiveCheck = {
    create_version = false
    name           = "LATIS_PoReceipt_LiveCheck"

    # sample_utterances changes here
    sample_utterances =  [
      "Live Check in LATIS for PO Receipt Issue",
      "need help to check the live status of PO Receipt",
      "help in PO Receipt guided resolution",
      "want info for purchase order receipt check in LATIS",
    ]
  },

  LATIS_Sales_Order = {
    create_version = false
    name           = "LATIS_Sales_Order"

    # sample_utterances changes here
    sample_utterances =  [
      "When inputting an item i got the error message Item is obsolete. How to validate my sales order ?",
      "item is obsolete error is displaying",
      "how to validate my sales order",
      "while entering an item an error message is displayed",
      "i want to validate my item",
      "how to validate my sales order item",
      "getting item is obsolete error",
      "fix item obsolete error",
      "how to correct item obsolete error",
      "sales order validation",
    ]
  },

  LATIS_AP_Automatic_Payment = {
    create_version = false
    name           = "LATIS_AP_Automatic_Payment"

    # sample_utterances changes here
    sample_utterances =  [
      "Why the account payable AP voucher is not going into payment",
      "Ap voucher is not going payment",
      "accounts payable voucher is not going to payment",
      "Ap voucher unable to go to payment",
      "payment not processed for ap voucher",
      "ap voucher payment is not going",
      "account payable voucher for payment not successful",
      "payment issue using account payable voucher",
      "Ap voucher issue for payment",
      "payment not happening using Ap Voucher",
      "invoice not in payment purchase",
      "ap invoice is not getting paid",
      "bill not going into payment",
      "invoice not available for payment",
      "bill not going with invoice number",
    ]
  },
  LATIS_TEServiceOrder_LiveCheck = {
    create_version = false
    name           = "LATIS_TEServiceOrder_LiveCheck"
    # sample_utterances changes here
    sample_utterances =  [
      "Live check in LATIS for service order error",
      "help on time entry service order guided resolution",
      "check live status for time entry service order issue",
      "live check for service order error in LATIS",
      "issue in time entry service order",
    ]
  },
  LATIS_VAT_report = {
    create_version = false
    name           = "LATIS_VAT_report"

    # sample_utterances changes here
    sample_utterances =  [
      "I cannot see some invoices in the VAT report",
      "not able to view my invoices in VAT report",
      "Some of the invoices are missing in VAT report",
      "There are some invoices that is not visible in VAT report.",
      "invoices missing in vat report",
      "invoice error in vat report",
      "vat report doesn't have some invoices",
      "unable to view few invoices in vat report",
      "invoice missing in VAT report",
      "how to fix invoice missing issue in VAT report",
    ]
  },
  LATIS_Procurement_GL = {
    create_version = false
    name           = "LATIS_Procurement_GL"

    # sample_utterances changes here
    sample_utterances =  [
      "On purchase order PO why does the GL date defaults to a date different from today's date?",
      "problem with the date in GL date",
      "general ledger date issues",
      "general ledger date defaults to a different date than today's date",
      "general ledger date is not correctly set",
      "something wrong with gl date on purchase order",
      "general ledger date error in purchase order",
      "purchase order has wrong GL date",
      "general ledger date is going to default value",
      "how to fix gl date error on purchase order",
      "Help with Procurement GL",
      "general ledger Purchases",
    ]
  },


LATIS_Websend_Invoice = {
	name = "LATIS_Websend_Invoice"
	sample_utterances = [
		"Websend has invocie but customer ledger and GL in Latis does not show invoice recorded",
		"customer ledger and Gl does not show invoice recorded",
		"invoice recorded is not shown in customer ledger and GL",
		"websend is having invoice but no invoice shown in GL",
		"no invoice recorded in customer ledger",
		"invoice is not posted even when websend has invoice",
		"websend has invoice but no record in customer ledger and GL",
		"General Ledger does not have the invoice recorded",
		"invoice not generated in customer ledger and gl",
		"posted invoice not shown in customer ledger",
		"Help with WebSend Invoice Not Recorded",
	]
},

LATIS_POPRINT_HELP = {
	name = "LATIS_POPRINT_HELP"
	sample_utterances = [
		"po print",
		"purchase order print",
		"print po",
		"print purchase order",
		"purchase order printing",
		"po print issue",
	]
},

LATIS_PoInquiry_Help = {
	name = "LATIS_PoInquiry_Help"
	sample_utterances = [
		"Help with purchase order inquiry",
		"po inquiry help",
		"purchase order inquiry",
	]
},
LATIS_MD_AddressBook = {
	name = "LATIS_MD_AddressBook"
	sample_utterances = [
		"Change Currency Code and AB Amount Codes",
		"change currency code",
		"AB amount codes",
		"how to change currency codes",
		"how to change ab amount code",
		"i want to change amount codes",
		"need help in changing currency cod",
		"currency code change steps",
		"ab amount code change steps",
		"need help in changing address book amount code",
	]
},
LATIS_MRP_SalesOrder = {
	name = "LATIS_MRP_SalesOrder"
	sample_utterances = [
		"The item was input in a sale order, however, the MRP doesn't generate any message to create an PO",
		"item was input in a sales order",
		"mrp did not generate message when item was input in sales order",
		"item input in sales but failed to create a po",
		"failed to create a purcahse order when item was input in sales",
		"in sales order item was input but po was not created",
	]
},



LATIS_VM_Deactive = {
	name = "LATIS_VM_Deactive"
	sample_utterances = [
		"Vendor can not be reactivated",
		"vendor are deactivated.",
		"not able to reactivate my vendor.",
		"vendor reactivation cannot be done",
		"I am not able to reactivate my vendor",
		"Need help in reactivating my vendor",
		"can you help in reactivating the vendor",
		"Vendor reactivation not possible",
		"how to achieve vendor reactivation",
		"Error in vendor reactivation",
		"Help with De-Active Vendor",
	]
},

LATIS_TimeSetup_Help = {
	name = "LATIS_TimeSetup_Help"
	sample_utterances = [
		"Help with time setup",
		"time setup",
		"i need help in time setup",
		"time setup help",
		"time setup module",
	]
},

LATIS_PO_MatchingReceipt = {
	name = "LATIS_PO_MatchingReceipt"
	sample_utterances = [
		"error while matching receipt",
		"matching receipt error",
	]
},

LATIS_Process_Update = {
	name = "LATIS_Process_Update"
	sample_utterances = [
		"Standard Cost Mass Update",
		"mass update",
		"how to do standard cost mass update",
		"mass updating of standard cost",
		"how can i mass update standard cost",
		"how to mass update standard cast",
		"updating standard cost",
		"standard cost mass updation",
		"steps to modify to standard cost",
		"bulk update standard cost",
	]
},

LATIS_PoEntry_Rejection = {
	name = "LATIS_PoEntry_Rejection"
	sample_utterances = [
		"My purchase order (PO)  was rejected, can i use it ?",
		"purchase order was rejected but i want to use it",
		"how to use rejected order",
		"order is rejected but I want to use it",
		"using a rejected purchase order is possible",
		"unable to use a rejected a purchase order",
		"I want to use a rejected purchase order",
	]
},

LATIS_AP_Manual_Payment = {
	name = "LATIS_AP_Manual_Payment"
	sample_utterances = [
		"I cannot make Payment Entry with Invoice Match and get error Payee Control - Payee Pending Approval",
		"getting error payee control payee pending approval",
		"payee control payee pending approval",
		"cannot make payment entry with invoice match",
		"unable to make payment entry",
		"payee control error",
		"help with payment entry",
		"Payment Entry with Invoice Match issue",
		"I am unable to make Payment Entry with Invoice Match",
		"payment Entry with invoice match is not working",
		"getting error Payee Control - Payee Pending Approval",
		"getting Recipient Control - Recipient Pending Approval",
	]
},

LATIS_NS_Purchase_Order_Rollout = {
	name = "LATIS_NS_Purchase_Order_Rollout"
	sample_utterances = [
		"I don't understand my purchase order PO status",
		"unable to understand po status",
		"not able to figure out po status",
		"need help in understanding po status",
		"not able to understand po status",
		"can you help in understanding my po status",
		"cannot understand my purchase order status",
		"po status is not understandable",
		"how to understand this po status",
		"need clarification on my purchase order status",
		"cannot understand my po status",
		"purchase order status is not understandable",
	]
},


LATIS_Missing_Batch = {
	name = "LATIS_Missing_Batch"
	sample_utterances = [
		"Unable to find the batch but account ledger exists",
		"not able to find batch",
		"how to find the batch",
		"account ledger exists",
		"cannot find the batch even when account ledger exists",
		"how to find the missing batch",
		"batch is missing",
		"batch is missing but account ledger exists",
		"how to find the batch account ledger already there",
		"account ledger is there but batch is missing",
	]
},

LATIS_AP_BatchInUse = {
	name = "LATIS_AP_BatchInUse"
	sample_utterances = [
		"Batch is In Use and cannot be posted",
		"batch cannot be posted as it in use",
		"currently batch in process and cannot be posted",
		"batch post cannot be done as it is in process",
		"my batch is currently in use",
		"batch in use and posting is not possible",
		"how to post a batch which is already in use",
		"batch currently in use and unable to post",
		"unable to post a used batch",
		"steps to post a batch which is in use",
	]
},


LATIS_Procurement_Purchase = {
	name = "LATIS_Procurement_Purchase"
	sample_utterances = [
		"I already unlocked the B1 code on the purchase order PO and the system asks me to do it again, why?",
		"unlocked B1 code on purchase order but system is asking to do it again",
		"system asking to unlock B1 code on purchase order",
		"unlock B1 code on purchase order",
		"facing problem with unlocking B1 code",
		"unlocking the b1 code on po",
		"system asks to unlock the b1 code again",
		"why to unlock the b1 code again",
		"system is asking for b1 unlock again",
		"why am i getting b1 unlock code message again",
	]
},

LATIS_Invoicing_Help = {
	name = "LATIS_Invoicing_Help"
	sample_utterances = [
		"Help with invoicing",
		"billing help",
		"needs help in invoicing",
		"sales order invoicing",
		"sales order invoicing help",
	]
},


LATIS_End_Greetings = {
	name = "LATIS_End_Greetings"
	sample_utterances = [
		"Thank you have a nice day",
		"Thanks",
		"Bye",
		"Thanks a lot",
		"ok thanks",
		"goodbye",
		"good luck",
		"thanks bye",
		"see you",
		"thank you",
		"ok",
	]
},

LATIS_AddressBook_HELP = {
	name = "LATIS_AddressBook_HELP"
	sample_utterances = [
		"need help in address book",
		"address book",
		"address book help",
		"Help with address book",
	]
},

LATIS_Customer_HELP = {
	name = "LATIS_Customer_HELP"
	sample_utterances = [
		"need help with customer",
		"customer help",
		"need help in customer module",
		"Help with customer",
	]

  # type = "CodeHook"

  # 	uri = "arn:aws:lambda:eu-west-1:353874849469:function:vwt-corp-latis-chatbot-uat"
  # 	message_version = "1.0"

},

LATIS_JC_Commitment = {
	name = "LATIS_JC_Commitment"
	sample_utterances = [
		"Commitment amount wrong or EAC",
		"EAC or Commitment  amount is wrong",
		"can you help in fixing the wrong commitment or EAC amount",
		"how to fix the wrong commitment or EAC amount",
		"need to correct the commitment or EAC amount",
		"commitments in caf are incorrect",
	]
},

LATIS_SODOC_print = {
	name = "LATIS_SODOC_print"
	sample_utterances = [
		"PDF not automatically printed on printer",
		"automatic pdf printing",
		"issue with printing pdf on printer",
		"pdf could not be automatically printed on printer",
		"printer is unable to print pdf automatically",
		"unable to print pdf automatically",
		"pdf is not getting printed",
		"automatic printing of pdf is not possible",
		"error in printing pdf automatically",
		"pdf print issue on printer",
	]
},

LATIS_VOM_PoUpdate = {
	name = "LATIS_VOM_PoUpdate"
	sample_utterances = [
		"I am not able to update po after final print",
		"unable to update purchase order",
		"purchase order is not updated after final print",
		"I cannot change the order after final print",
		"po cannot be updated",
		"updating po is not possible",
		"changing po after final print is not possible",
		"cannot change my order after printing",
	]
},

LATIS_MRP_Help_Menu = {
	name = "LATIS_MRP_Help_Menu"
	sample_utterances = [
		"help with mrp",
		"mrp help",
		"mrp sub module help",
		"I need help in mrp",
		"can you help in MRP",
	]
},

LATIS_VoucherMatch_LiveCheck = {
	name = "LATIS_VoucherMatch_LiveCheck"
	sample_utterances = [
		"live check in latis for Voucher match",
		"Voucher Match in latis",
		"voucher match help",
		"facing issue for voucher match",
		"can you help in voucher match",
	]
},

LATIS_Random_Identifier = {
	name = "LATIS_Random_Identifier"
	sample_utterances = [
		"awseecc",
		"eeusbbda",
		"awxefgdscbbh12",
		"awdxvmrnrlslwe",
		"ss=qnwuss12",
		"swauioqlpondegaywpo2",
		"snwiaqkadwiqkaoqn2",
		"snjwiolawhxsb3",
		"dasdadasd",
		"dasd",
		"do I have po pending validation?",
		"po pending validation",
		",,nnbb,",
		"ppppp",
		"pr",
		"hghghdf",
		"cacnnas",
		"sasdas",
		"fdfhdhf",
		"sfksdfnc",
		"translation issue",
	]
},

LATIS_SalesUpdate_Help = {
	name = "LATIS_SalesUpdate_Help"
	sample_utterances = [
		"Help with Sales Update",
		"sales update help",
		"sales update",
		"updates",
		"Check for Sales Update Failue/Error",
		"sales update failure",
		"sales update issue",
	]
},

LATIS_AP_Payment_Supplier = {
	name = "LATIS_AP_Payment_Supplier"
	sample_utterances = [
		"Expected supplier not appearing in create payment workgroup",
		"supplier not appearing",
		"payment workgroup doesnt have the right supplier",
		"how to fix supplier not appearing in payment group",
		"I cannot see the expected supplier in the payment workgroup",
		"supplier is not visible in the create payment workgroup",
		"create payment group doesn't have the expected supplier",
		"supplier not appearing in the payment workgroup",
		"expected supplier not there in payment group",
		"payment workgroup supplier not present issue",
		"vendor is not visible in payment workgroup",
		"vendor not in payment ",
	]
},


LATIS_Batch_LiveCheck = {
	name = "LATIS_Batch_LiveCheck"
	sample_utterances = [
		"Live Check in LATIS for batch issue",
		"need help in batch in error guided resolution",
		"status of batch in error guided resolution",
		"information required for batch in error live check",
		"check for batch in error guided resolution",
	]
},

LATIS_TE_BeforeApproval = {
	name = "LATIS_TE_BeforeApproval"
	sample_utterances = [
		"time entry correction before approval",
		"time entry modification before approval",
		"correction of time before approval",
		"correcting time enter before it is approved",
		"want to correct a time entry before approved",
		"before approval how to correct a time entry",
		"steps to correct a time entry before approved",
		"correct a time entry before approved",
		"How do I correct a time entry before it is approved?",
		"I made a mistake in my time entry but it has not been approved yet, what should I do?",
	]
},

LATIS_PoStatus_Help = {
	name = "LATIS_PoStatus_Help"
	sample_utterances = [
		"Help in PO Status",
		"Purchase Order Status help",
		"need assistance in po status",
		"I need help in po status",
		"help with po status",
	]
},

LATIS_Response_Yes = {
	name = "LATIS_Response_Yes"
	sample_utterances = [
		"Yes",
		"yes",
		"yeah",
		"satisfied",
		"Oui",
		"Confirm",
		"Confirmation",
	]
},

LATIS_GA_BuMaster = {
	name = "LATIS_GA_BuMaster"
	sample_utterances = [
		"Change cost center type",
		"change cost type",
		"cost center type how to change that",
		"process to change cost center",
		"business unit master",
		"changing a cost center",
		"cost center type change",
		"how to change the cost center type",
		"need help in changing the cost center",
		"steps to change the cost center",
		"how to change bu type",
	]
},

LATIS_FA_Creation = {
	name = "LATIS_FA_Creation"
	sample_utterances = [
		"fixed asset creation giving missing accounts error",
		"asset creation is not possible",
		"error in creation fixed assets",
		"investing in fixed asset is giving error",
		"Investment of fixed asset not possible",
		"missing accounts error in creating fixed asset",
		"missing accounts error in investing in fixed asset",
		"fixed asset creation is not happening",
		"fa creation error",
		"error in creating FA",
	]
},

LATIS_All = {
	name = "LATIS_All"
	sample_utterances = [
		"When I open some order Purchase or Sales there is an Red error message Reserved, how to proceed?",
		"gettting red error message reserved",
		"reserved error how to proceed",
		"need help in fixing po reserved error",
		"how to fix reserved error",
		"How to fixed reserved error in a purchase order",
		"order error reserved",
		"sales order error reserved",
		"getting error in sales order reserved",
		"getting error in red color reserved",
		"reserved by error",
		"getting error as reserved by",
	]
},

LATIS_POEntry_Help = {
	name = "LATIS_POEntry_Help"
	sample_utterances = [
		"Purchase order Entry",
		"po entry",
		"purchase order entry help",
	]
},

LATIS_FA_Help = {
	name = "LATIS_FA_Help"
	sample_utterances = [
		"Help with fixed assets",
		"fixed assets",
		"fixed assets help",
		"need help in fixed assets",
		"fixed assets module",
	]
},

LATIS_FA_JournalEntry = {
	name = "LATIS_FA_JournalEntry"
	sample_utterances = [
		"Why the journal entry (JE) is not going to Fixed Asset (FA) module?",
		"issue with the je as it is not going to Fixed asset",
		"problem with journal entry",
		"journal entry not going to fixed asset",
		"journal entry and fixed asset not going issue",
		"can you help me in fixing journal entry issue with fixed assets",
		"journal entry not going into fixed asset",
		"fixed asset and journal entry issue",
		"journal entry unable to go to fixed asset",
		"journal entry not working with fixed asset",
		"Help with Fixed Asset JE",
		"Immobilization JE",
	]
},

LATIS_AR_Contract_Billing = {
	name = "LATIS_AR_Contract_Billing"
	sample_utterances = [
		"unable to invoice a contract",
		"i am not able to invoice a contract",
		"unable to perform invoice contract",
		"how to perform invoice contract",
		"invoice a contract is not possible",
		"ar contract billing",
		"contract invoicing is not possible",
		"can you help in invoicing a contract",
		"contract invoice process error",
		"cortract invoicing error",
	]
},

LATIS_greetingUser = {
	name = "LATIS_greetingUser"
  	description = "LATIS"
	sample_utterances = [
		"Hi",
		"Hello",
		"Hola",
		"Hey",
		"what's up",
		"how are you",
		"what is your name",
	]

},

LATIS_PoPrint_LiveCheck = {
	name = "LATIS_PoPrint_LiveCheck"
	sample_utterances = [
		"Live Check in LATIS for PO Print Issue",
		"I want to query latis for po print issue",
		"need info on po print issue from LATIS",
		"guided resolution for PO Print",
		"live check for PO Print guided resolution",
		"purchase order print check in latis",
	]
},

LATIS_VendorMaster_Help = {
	name = "LATIS_VendorMaster_Help"
	sample_utterances = [
		"Help with Vendor Master",
		"Vendor Master Help",
	]
},

LATIS_FA_Depreciation = {
	name = "LATIS_FA_Depreciation"
	sample_utterances = [
		"fixed asset is depreciated with blank amount",
		"getting a blank amount in fixed asset depreciation",
		"asset depreciation with blank amount",
		"how to fix fixed asset depreciation with blank amount",
		"invalid amount in fixed assets depreciation",
		"no amount can be seen in fixed asses depreciation",
		"fixed asset is giving blank amount",
		"asset is depreciation with no amount",
		"depreciation with zero balance",
		"zero balance deprecation",
	]
},

LATIS_PoCreation_Help = {
	name = "LATIS_PoCreation_Help"
	sample_utterances = [
		"Help with PoCreation",
		"Help with purchase order creation",
		"need help in po creation",
		"Purchase Order Creation help",
		"I need help in po creation",
		"PO creation from PR",
		"po creation",
		"Purchase order creation from PR",
	]
},

LATIS_Finance = {
	name = "LATIS_Finance"
	sample_utterances = [
		"Entries with message Account Number Costcenter.Account.Subaccount incorrect",
		"account number costcenter.account.subaccount.incorrect",
		"getting the message account number costcenter",
		"account subaccount incorrect",
		"need help in fixing the account number costcenter.account.subaccount",
		"account.subaccount is incorrect",
		"how to fix costcenter.account.subaccount message",
		"costcenter.account error",
		"need help in fixing the account number cost center error",
		"account assignment is incorrect",
		"account assignment is wrong",
		"account number is wrong",
	]
},

LATIS_NSP_PoApproval = {
	name = "LATIS_NSP_PoApproval"
	sample_utterances = [
		"My purchase order (PO) was approved,  next status remained 230",
		"next status remained 230 after approving PO",
		"po was approved but status remained at 230",
		"purchase order at 230 even after approval",
		"purchase order is approved but at 230",
		"status is at 230 after po approval",
		"order approved but status at 230",
		"order approval complete",
	]
},

LATIS_TimeEntry_LiveCheck = {
	name = "LATIS_TimeEntry_LiveCheck"
	sample_utterances = [
		"Live check in LATIS for time entry issue",
		"query in time entry issue",
		"Time Entry guided resolution",
		"live check for time entry issue",
		"Live Check in LATIS for Time integration issue",
	]
},

LATIS_AP_Invoice_Reversal = {
	name = "LATIS_AP_Invoice_Reversal"
	sample_utterances = [
		"How can i reverse the matching with the PO Receipt",
		"want to know how i can reverse the matching with PO Receipt",
		"procedure for reversing the matching with PO receipt",
		"how to reverse the matching with po receipt",
		"reversing of an invoice",
		"invoice reversal with po receipt",
		"need help in reversing an invoice with po receipt",
		"ap invoice reversal",
		"reversal of an ap invoice",
		"reverse the matching of an ap invoice with the po receipt",
		"accounts payable invoice cancellation",
		"reverse invoice match",
		"how to reverse voucher matches to purchase order",
		"how to reverse voucher matched to receipt",
		"Help with Accounts Payable Invoice Reversal",
		"Accounts Payable Invoice Conversion",
		"how to reverse the matching with order acknowledgement",
	]
},

LATIS_AP_HELP = {
	name = "LATIS_AP_HELP"
	sample_utterances = [
		"AP Help",
		"Help with AP",
		"help with accounts payable",
		"accounts payable help",
	]
},

LATIS_Response_No = {
	name = "LATIS_Response_No"
	sample_utterances = [
		"no",
		"nope",
		"naay",
		"not",
		"non",
		"none",
		"not satisfied",
	]
},

LATIS_SD_OD = {
	name = "LATIS_SD_OD"
	sample_utterances = [
		"My SD is stuck in status 573 or is not shipped how can I move the status for being able to invoice this sales order ?",
		"stuck in status 573",
		"sales distribution is not shipped",
		"how to move the status for being able to invoice this sales order",
		"573 status for SD",
		"i want to move the status to invoice the sales order",
		"facing issues in shipping the sd",
		"status is 573 how to fix it",
		"i need help in fixing 573 so stuck",
		"i want to fix 573 issue",
	]
},

LATIS_JC_Fiscal = {
	name = "LATIS_JC_Fiscal"
	sample_utterances = [
		"Following the change of fiscal year the CAF columns are empty",
		"change in fiscal year has made CAF columns blank",
		"CAF columns are showing blank as there is change in fiscal year",
		"change of fiscal year",
		"CAF columns blank",
		"fiscal year caf columns are empty",
		"caf columns are empty in fiscal year",
		"caf columns are blank for fiscal year",
		"fiscal year caf columns blank issue",
		"blank data in caf columns",
		"CAF columns are not showing any data",
		"my caf is empty",
		"caf columns are empty",
		"caf empty issues",
	]
},

LATIS_Budget_Help = {
	name = "LATIS_Budget_Help"
	sample_utterances = [
		"Help with budget/commitment",
		"Help with Budget/Commitment",
		"Help with Budget",
		"Help with commitment",
	]
},

LATIS_CAF_HELP = {
	name = "LATIS_CAF_HELP"
	sample_utterances = [
		"help in caf",
		"Help with CAF",
	]
},

LATIS_SalesOrder_Help = {
	name = "LATIS_SalesOrder_Help"
	sample_utterances = [
		"Help with Sales Order",
		"sales order",
		"sales order help",
		"need help in sale order",
		"sales order module",
	]
},

LATIS_Vendor_Hold = {
	name = "LATIS_Vendor_Hold"
	sample_utterances = [
		"Vendor is on hold with VI search type Hold Code",
		"vendor on hold with vi search hold code",
		"VI hold code",
		"vendor is put on hold because of VI search type hold code",
		"vendor is on hold",
		"vi search hold code status",
		"how to fix vendor on hold issue",
		"need help in fixing vi search type hold code status",
		"on hold vendor",
		"vendor on hold status",
	]
},

LATIS_GeneralAccounting_Help = {
	name = "LATIS_GeneralAccounting_Help"
	sample_utterances = [
		"Help with General Accounting",
		"help with GA",
		"general accounting help",
		"general accounting",
		"general accounting module",
		"help with general ledger",
		"general ledger",
	]
},

LATIS_GA_AccountPosting = {
	name = "LATIS_GA_AccountPosting"
	sample_utterances = [
		"Account is disabled",
		"disabled account",
		"inactive account with I",
		"getting account as disable",
		"account is showing as inactive",
		"account posting",
		"status of account is disable",
		"status of account is inactive",
		"account status disable",
		"i is marked in account",
		"account is marked with I",
	]
},

LATIS_Websend_AR = {
	name = "LATIS_Websend_AR"
	sample_utterances = [
		"AR invoice is showing in customer ledger for sales or service but not in Websend",
		"ar invoice not visible in websend",
		"invoice not present in websend",
		"websend does not have the ar invoice but customer ledger has it",
		"invoice issue in websend",
		"websend is not showing the invoice even when the customer ledger has it",
		"web not showing the invoice",
		"how to fixing invoice visibility issue in websend",
		"I can see ar invoice in customer ledger but not in websend",
		"can you help in seeing the ar invoice on websend",
		"Help with WebSend AR Invoice Issue",
	]
},

LATIS_AR_Invoice_Printout = {
	name = "LATIS_AR_Invoice_Printout"
	sample_utterances = [
		"I needed to print a particular invoice but some other got printed",
		"needed a particular invoice to be printed but got different one printed",
		"wrong invoice got printed",
		"particular invoice was needed to get print out but got some other",
		"printed a wrong invoice can you help",
		"need help in printing a particular invoice",
		"unable to print a specific invoice",
		"particular invoice did not get printed",
		"can you help in printing a specific invoice",
		"AR invoice is not printed",
		"Help with Accounts Receivable Invoice Printout",
		"Printing invoices for accounts receivable",
	]
},


LATIS_AR_HELP = {
	name = "LATIS_AR_HELP"
	sample_utterances = [
		"help with AR",
		"help with accounts receivable",
		"accounts receivable",
		"accounts receivable help",
		"help with ar module",
	]
},

LATIS_ProjectMaster_Help = {
	name = "LATIS_ProjectMaster_Help"
	sample_utterances = [
		"Help with Project Master",
		"Help with ProjectMaster",
	]
},

LATIS_NS_GL = {
	name = "LATIS_NS_GL"
	sample_utterances = [
		"I am not able to  enter a receipt for my purchase order PO I get the error GL date is prior to current period",
		"GL date is prior to current period getting this error while entering a receipt",
		"not able to enter a receipt for my po",
		"how to solve GL date is prior to current period",
		"unable to enter receipt of my po",
		"not able to receipt my purchase order",
		"getting error gl date is prior to current period",
		"gl date prior to current period error",
		"need help in entering receipt of my po",
		"how to enter receipt for my purchase order",
		"gl date is prior to current period error",
		"Help with General Ledger Data Issue",
	]
},

LATIS_TimeUpload_Help = {
	name = "LATIS_TimeUpload_Help"
	sample_utterances = [
		"help with time upload",
		"time upload help",
		"time upload",
	]
},

LATIS_Sales_Update = {
	name = "LATIS_Sales_Update"
	sample_utterances = [
		"Sales update was not processed",
		"update of sales cannot be processed",
		"failure in updating the sales",
		"updation of sales couldn't be done",
		"sales update doesn't work",
		"unable to process sales update",
		"facing error in processing sales update",
		"sales update processing issue",
		"facing problems in processing sales update",
		"sales update is not getting processed",
		"sales order could not update",
		"sales order update failed",
		"so will not update",
		"error in updating so",
		"so 210055 could not be updated",
		"sales update was not successful",
		"sales update was not performed",
	]
},

LATIS_SalesUpdate_Failure = {
	name = "LATIS_SalesUpdate_Failure"
	sample_utterances = [
		"Sales update failed and sales order not closed",
		"sales order not closed",
		"sales update is falied",
		"unable to close sales order",
		"how to fix sales update failure",
		"need help in closing sales order",
		"sales order closure failure",
		"sales order unable to process",
		"sales update is not happening",
		"how to fix sales update issue",
	]
},

LATIS_PoCreation_LiveCheck = {
	name = "LATIS_PoCreation_LiveCheck"
	sample_utterances = [
		"Live Check in LATIS for po creation issue",
		"po creation guided resolution",
		"i want live check on po creation",
		"status of po creation guided resolution",
		"information for po creation guided resolution",
		"purchase order create check in latis",
	]
},

LATIS_TimeAssignment_Help = {
	name = "LATIS_TimeAssignment_Help"
	sample_utterances = [
		"Help with time assignment",
		"time assignment help",
		"i need help in time assignment",
		"time assignment module help",
		"time assignment",
	]
},

LATIS_AP_Voucher_Approval_process = {
	name = "LATIS_AP_Voucher_Approval_process"
	sample_utterances = [
		"The AP Invoice is not sent to any approver",
		"Approver has yet to receive any AP Invoice",
		"no ap invoice is send to any approver",
		"ap invoice is not received by any approver as they are yet to be sent",
		"The AP Invoice isn't shipped to any approver",
		"ap invoice not sent to approver",
		"approver did not recive ap invoice",
		"accounts payable invoice has not been shipped",
		"accounts payables invoice is not sent to the approver",
		"ap voucher approval",
		"ap voucher is not sent for approval",
		"supplier invoice approval",
		"help with accounts payable voucher approval",
		"approval of supporting documents",
	]
},

LATIS_Record_Invalid_message_in_various_programmes = {
	name = "LATIS_Record_Invalid_message_in_various_programmes"
	sample_utterances = [
		"Record Invalid message in various programs",
		"getting Record Invalid message at various programs",
		"display of Record Invalid message",
		"why i am getting record invalid message ?",
		"how to fix record invalid message",
		"getting record invalid message error",
		"in various programme getting  record invalid message",
		"record invalid message occurred in various programmes",
		"need to solved record invalid",
		"record invalid message how to fix",
	]
},

LATIS_WorkbenchOrders_Help = {
	name = "LATIS_WorkbenchOrders_Help"
	sample_utterances = [
		"help in workbench sales order",
		"workbench order help",
		"workbench sales order",
	]
},

LATIS_Inventory_Help = {
	name = "LATIS_Inventory_Help"
	sample_utterances = [
		"Help with  Inventory",
		"Help with distribution",
	]
},

LATIS_Reminder_Letter = {
	name = "LATIS_Reminder_Letter"
	sample_utterances = [
		"Why only few reminder letters get printed",
		"only certain reminder letters got printed, what is the reason?",
		"reason behind only few reminder letter got printed?",
		"only few reminder letters getting printed",
		"very less reminder letters getting printed",
		"reminder letters are very less in number",
		"very less reminder letters printed",
		"reminder letters less in number",
		"reminder letters are very few",
		"only few reminder letters",
	]
},


LATIS_Sales_Order_loaction = {
	name = "LATIS_Sales_Order_loaction"
	sample_utterances = [
		"How to create PRIMARY location to an Item Branch",
		"create PRIMARY location to item branch",
		"on item branch create primary location",
		"item branch primary location creation",
		"how can i create PRIMARY location",
		"creating primary location to item branch",
		"steps to create a primary location",
		"primary location creation",
		"item branch needs a primary location",
	]
},

LATIS_Purchase_Order = {
	name = "LATIS_Purchase_Order"
	sample_utterances = [
		"Purchase order PO cannot be printed there is a blank page",
		"I am getting blank page while printing PO",
		"why there is a blank page when i am printing PO?",
		"unable to print a po",
		"purchase order printing issue",
		"blank issue in purchase order",
		"i am not able to print a purchase order",
		"getting blank page while printing a po",
		"i cannot print purchase order",
		"cannot print po",
		"order form is not printed",
		"po does not print",
		"get a blank pdf when printing a purchase order",
	]
},

# LATIS_SODOC_blank = {
# 	name = "LATIS_SODOC_blank"
# 	sample_utterances = [
# 		"Order Acknowledgement or Purchase Order (PO) printed a blank PDF",
# 		"order acknowledgement printed a blank pdf",
# 		"po printed blank pdf",
# 		"i got a blank pdf while printing po",
# 		"issues in order acknowledgement",
# 		"blank pdf generated while printing a purchase order",
# 		"got a blank pdf while generating order acknowledgement",
# 		"blank pdf issue in po print",
# 		"how to fix blank pdf issue in po print",
# 		"need help in blank pdf issue",
# 		"purchase order confirmation is empty",
# 		"order confirmation is not printed",
# 		"blank order confirmation is printed",
# 		"Ab print is empty",
# 	]
# },

# LATIS_JC_CAF = {
# 	name = "LATIS_JC_CAF"
# 	sample_utterances = [
# 		"The line is not visible in the CAF but present in the PDF. Why ?",
# 		"in CAF the line is not visible",
# 		"the line present in PDF but absent in CAF",
# 		"line not visible in caf but present in the pdf",
# 		"caf line issue",
# 		"line is present in pdf but not visible in caf",
# 		"Caf line not visible issue",
# 		"caf line visibility issue",
# 		"cannot see the line in CAF",
# 		"why cannot i see the line in CAF",
# 		"cannot find an account in CAF",
# 		"CAF does not have accounts",
# 		"I cannot see my account in CAF",
# 	]
# },


# LATIS_SD_NextStatus = {
# 	name = "LATIS_SD_NextStatus"
# 	sample_utterances = [
# 		"SD order still at shipment status Next Status 573",
# 		"next status 573 for sd order",
# 		"order stuck at shipment status",
# 		"next status is 573 order is  stuck",
# 		"My sd order is stuck at shipment",
# 		"how to move sd order from shipment status",
# 		"steps to move sd order",
# 		"order is stuck before 573",
# 	]
# },

# LATIS_VariationManagement_Help = {
# 	name = "LATIS_VariationManagement_Help"
# 	sample_utterances = [
# 		"Help with Variation Order Management",
# 		"Variation Order Managment help",
# 		"variation management help",
# 		"po update help",
# 	]
# },


# LATIS_Currency = {
# 	name = "LATIS_Currency"
# 	sample_utterances = [
# 		"Currency Rate is missing",
# 		"currency rate missing",
# 		"not able to see currency rate",
# 		"why currency rate is missing",
# 		"can you fix the currency rate issue",
# 		"current is missing can you help me",
# 		"please help in fixing currency rate issue",
# 		"missing currency rate",
# 		"currency missing",
# 	]
# },

# LATIS_Procurement_PurchaseOrder_Help = {
# 	name = "LATIS_Procurement_PurchaseOrder_Help"
# 	sample_utterances = [
# 		"Help with  Purchase Order Operations",
# 		"Help with Procurement purchase order",
# 		"Help with procurement purchase order operations",
# 	]
# },

# LATIS_GA_BuCreate = {
# 	name = "LATIS_GA_BuCreate"
# 	sample_utterances = [
# 		"How to Create a New Business Unit",
# 		"creation of new bu",
# 		"bu creation",
# 		"new BU creation",
# 		"steps to create new BU",
# 		"need help in creating a bu",
# 		"bu creation help",
# 		"how can u help me in creating a business unit",
# 		"business unit creation",
# 		"creation of a business unit",
# 		"Help with Business Unit Creation",
# 		"How to create a new cost center",
# 		"creation of new cost center",
# 		"cost center creation",
# 	]
# },

# LATIS_SO_Inquiry = {
# 	name = "LATIS_SO_Inquiry"
# 	sample_utterances = [
# 		"The sales order is stuck in a specific status",
# 		"SO  is stuck",
# 		"specific status for sales order",
# 		"sales order stuck issue",
# 		"can you help in fixing sales order stuck issue",
# 		"sales order is stuck",
# 		"status issue of sales order",
# 		"sales order stuck help",
# 		"status of sales order is stuck",
# 		"i need help in fixing sales order stuck issue",
# 	]
# },

# LATIS_SO_Status_Update = {
# 	name = "LATIS_SO_Status_Update"
# 	sample_utterances = [
# 		"Who did this sales order step",
# 		"who updated the sales order status",
# 		"why my sales order went in backorder",
# 		"i want to know who updated the sales order",
# 		"how to know that who did the sales order step",
# 		"sales order step was performed by whom",
# 		"so went in backorder why?",
# 		"so step who did it?",
# 		"i want to know who did my so",
# 		"my so status got updated i want to know who did it",
# 		"Help with Sales Order Status Update",
# 		"who changed my sales order",
# 		"who made the change to my order",
# 		"why is my order behind",
# 	]
# },

# LATIS_PoPrint_InitialLines = {
# 	name = "LATIS_PoPrint_InitialLines"
# 	sample_utterances = [
# 		"How do I print a purchase order with the initial lines and the change order lines variance order ?",
# 		"print purchase order and change order lines",
# 		"print purchase order with initial lines",
# 		"change order lines variance only",
# 		"printing a po with initial lines",
# 		"print a po with change order lines",
# 		"how to print a purchase order with initial lines",
# 		"printing a po with change order line",
# 		"purchase order print with initial lines",
# 		"how to print Po with change order lines",
# 		"How to print my order with lines",
# 		"How do i print po and the lines",
# 	]
# },

# LATIS_PoReceipt_Help = {
# 	name = "LATIS_PoReceipt_Help"
# 	sample_utterances = [
# 		"I need help in purchase order receipt",
# 		"help in Po Receipt",
# 		"Purchase Order Receipt help",
# 		"require help with po receipt",
# 		"po receipt assistance",
# 	]
# },


# LATIS_AR_Invoice_void = {
# 	name = "LATIS_AR_Invoice_void"
# 	sample_utterances = [
# 		"I cannot delete reverse void the account receivables AR  Invoice",
# 		"cannot reverse the ar invoice",
# 		"how to void ar invoice",
# 		"need help in deleting ar invoice",
# 		"how to reverse the accounts receivable invoic",
# 		"voiding the ar invoice",
# 		"need help in ar invoice reversal",
# 		"how to void the accounts receivables invoice",
# 		"deletion of invoice",
# 		"steps to delete ar invoice",
# 		"Cancel Accounts Receivable invoice",
# 		"cancelling ar invoices",
# 		"cannot reverse an invoice",
# 	]
# },


# LATIS_AP_VoucherRedistribution = {
# 	name = "LATIS_AP_VoucherRedistribution"
# 	sample_utterances = [
# 		"I cannot redistribute an Invoice on a particular account",
# 		"redistributing an invoice is not possible",
# 		"how to redistribute an invoice",
# 		"unable to distribute an invoice",
# 		"distribution of invoices again is not possible",
# 		"help in redistributing an invoice",
# 		"invoice cannot be distributed to an account",
# 	]
# },

# LATIS_CAFRecalculation_Help = {
# 	name = "LATIS_CAFRecalculation_Help"
# 	sample_utterances = [
# 		"Help with CAF Recalculation",
# 		"CAF recalculation",
# 		"need help in CAF recalculation",
# 		"recalculating caf",
# 		"CAF recalculation help",
# 	]
# },


# LATIS_Time_Entry_Integreted = {
# 	name = "LATIS_Time_Entry_Integreted"
# 	sample_utterances = [
# 		"How do I correct a time entry after it is integrated?",
# 		"correction of time entry after integration",
# 		"time entry after integration",
# 		"how can i correct my time entry after integration",
# 		"time entry correction after getting integrated",
# 		"need help in correcting time entry",
# 		"after integration how to correct a time entry",
# 		"time entry modification after intgeration",
# 		"integration done how to correct a time entry",
# 		"time entry correction after integration is complete",
# 		"my time has been integrated how can i correct",
# 	]
# },


# LATIS_Time_Entry_Uploaded = {
# 	name = "LATIS_Time_Entry_Uploaded"
# 	sample_utterances = [
# 		"I have error when doing Time Entry mass upload",
# 		"time entry mass-upload error",
# 		"time entry mass-upload issue",
# 		"issue with time entry mass upload",
# 		"problem with mass upload time entry",
# 		"error in doing mass upload of time entry",
# 		"how to mass upload the time entry data",
# 		"time entry data mass upload",
# 		"getting an error in time entry mass upload",
# 		"mass upload of time entry is giving error",
# 		"Help with Time Entry Upload",
# 	]
# },


# LATIS_GL_Accounts = {
# 	name = "LATIS_GL_Accounts"
# 	sample_utterances = [
# 		"how can i copy or create accounts",
# 		"i want to create a gl account",
# 		"i want to copy an account",
# 		"copying a gl account",
# 		"creating a gl account",
# 		"steps to create a gl account",
# 		"need help in copying accounts",
# 		"creating gl accounts steps",
# 		"creating a gl account or copying it",
# 		"process to create account",
# 		"how to copy accounts",
# 		"issue in copying accounts",
# 		"what is the process of copying accounts",
# 		"Help with General Ledger Account Creation",
# 	]
# },


# LATIS_AR_ChangeVatCode = {
# 	name = "LATIS_AR_ChangeVatCode"
# 	sample_utterances = [
# 		"Can i change VAT tax code on the posted document?",
# 		"Am I eligible to change VAT code on posted document?",
# 		"vat tax code can it be changed?",
# 		"I want to change my VAT tax code , can I do that?",
# 		"changing VAT tax code",
# 		"how to change the vat tax code",
# 		"is it possible for me to change the vat tax code",
# 		"changing the vat tax code",
# 		"I want to change the vat tax code",
# 		"changing vat tax code",
# 		"how to change vat code on posted invoice",
# 		"change tax on invoice",
# 		"change tax on created invoice",
# 		"change vat after invoicing",
# 		"change in sales tax code",
# 	]
# },


# LATIS_Sales_AR_Invoice = {
# 	name = "LATIS_Sales_AR_Invoice"
# 	sample_utterances = [
# 		"Why i cannot see in the system an account receivables AR invoice that was issued/printed from sales module?",
# 		"I am not able see AR invoice in system that was issued from sales modules?",
# 		"An AR invoice was issued but i am not able to see it",
# 		"what is the reason behind why i am not able to see my AR invoice?",
# 		"unable to see AR invoice",
# 		"ar invoice issues but unable to view",
# 		"unable to view AR invoice in the system",
# 		"AR invoice in the system unable to view",
# 		"need to fix ar invoice viewing issue",
# 		"Help with Sales AR Invoice",
# 		"invoice sales AR",
# 		"ar invoice printed from sales order is not visible",
# 	]
# },


# LATIS_Time_Entry_TimeCard = {
# 	name = "LATIS_Time_Entry_TimeCard"
# 	sample_utterances = [
# 		"the time card generation is OK but it is impossible to post them",
# 		"time card is alright but its not possible to post them",
# 		"generating time card is ok",
# 		"posting time card is not possible",
# 		"unable to post the time card",
# 		"can you help in posting the time card",
# 		"time card generation is fine, but cannot post them",
# 		"time card posting issue",
# 		"I need help in posting a time card",
# 		"please help in posting the time card",
# 	]
# },

# LATIS_ShipConfirm_LiveCheck = {
# 	name = "LATIS_ShipConfirm_LiveCheck"
# 	sample_utterances = [
# 		"Live Check in LATIS for Ship Confirm Issue",
# 		"want information on ship confirmation issue",
# 		"help on ship confirmation guided resolution",
# 		"ship confirmation live check information",
# 		"unable to ship confirm",
# 		"ship confirmation error",
# 		"issue in ship confirmation",
# 	]
# },

# LATIS_Scheduling_Help = {
# 	name = "LATIS_Scheduling_Help"
# 	sample_utterances = [
# 		"Help with Scheduling",
# 	]
# },

# LATIS_Time_Entry_TimeCalender = {
# 	name = "LATIS_Time_Entry_TimeCalender"
# 	sample_utterances = [
# 		"Working Calendar the week is closed for time entry",
# 		"working calender",
# 		"week closed for time entry",
# 		"entry for the week is closed",
# 		"the week will be closed for time entry",
# 		"week is closed for time entry",
# 		"time entry is closed for this week",
# 		"working calendar time entry",
# 		"time entry for the week is closed",
# 		"closed time entry",
# 	]
# },

# LATIS_Process_Purchase = {
# 	name = "LATIS_Process_Purchase"
# 	sample_utterances = [
# 		"How to create a purchase order PO from a purchase requisition PR",
# 		"purchase order creation from purchase requistion",
# 		"how can i create po from pr",
# 		"through pr create a po",
# 		"need help in creating a purchase order",
# 		"steps to create a purchase order",
# 		"how to create a purchase order",
# 		"i have a purchase requisition, how to create a po",
# 		"Help with NS Purchase Order Creation",
# 	]
# },

# LATIS_Time_InvalidPayStatus = {
# 	name = "LATIS_Time_InvalidPayStatus"
# 	sample_utterances = [
# 		"Getting the error \"Error 0310 - Invalid Employee Pay Status\"",
# 		"getting error \"Error 0310 - Invalid Employee Pay Status\" while running the integration",
# 		"\"Error 0310 - Invalid Employee Pay Status\" error while running the integration",
# 		"When I run Integration I get the error \"Error 0310 - Invalid Employee Pay Status\"",
# 		"facing \"Error 0310 - Invalid Employee Pay Status\" when running integration",
# 		"How to fix invalid employee status",
# 		"getting invalid employee status error",
# 		"help in fixing invalid employee pay status",
# 		"Need to fix invalid invalid employee status",
# 	]
# },

# LATIS_SO_Lots = {
# 	name = "LATIS_SO_Lots"
# 	sample_utterances = [
# 		"Sales Order Location and lots error",
# 		"lots error",
# 		"so location",
# 		"need help in sales order location",
# 		"need help in lots error",
# 		"can you fix lots error",
# 		"i am getting lots error",
# 		"can you help in fixing lots error",
# 		"lots error resolution",
# 		"how to get sales order location",
# 		"sales order with batch error",
# 		"sales order lot error",
# 	]
# },

# LATIS_AP_Payment = {
# 	name = "LATIS_AP_Payment"
# 	sample_utterances = [
# 		"delete a payment",
# 		"i want to delete a payment",
# 		"can you help me in deleting a payment",
# 		"payment deletion",
# 		"ap payment",
# 		"ap payment deletion",
# 		"deletion of ap payment",
# 		"accounts payable payment deletion",
# 		"deleting a accounts payable payment",
# 		"how to delete an ap payment",
# 		"Help with Accounts Payable payment",
# 		"Payment of Accounts Payable",
# 	]
# },

# LATIS_FA_Fiscal = {
# 	name = "LATIS_FA_Fiscal"
# 	sample_utterances = [
# 		"My fixed assets in new fiscal year are not reporting expected values",
# 		"fixed assets not reporting expected values",
# 		"expected values are not reported by fixed assets in fiscal year",
# 		"fixed assets in new fiscal year is giving error",
# 		"values not matching in new fiscal year for fixed assets",
# 		"fixed assets fiscal year not giving expected values",
# 		"expected values not coming in fixed assets",
# 		"Fixed Asset in new fiscal year has values mismatch",
# 		"values are mismatching in fa fiscal year",
# 		"Fixed Asset in new fiscal year has mismatched values",
# 		"capital assets issue of the year",
# 	]
# },

# LATIS_AR_or_AP_not_Matching_GL = {
# 	name = "LATIS_AR_or_AP_not_Matching_GL"
# 	sample_utterances = [
# 		"The account receivables AR balance and general ledger GL balance don't match or the account payables AP balance and general ledger GL balance don't match",
# 		"account receivables and GL are not matching neither AP and GL balance matches",
# 		"Both AR And GL and also AP and GL balance doesn't match .",
# 		"account receivables and GL balance are different and so is AP and GL which were supposed to be equal.",
# 		"account receivables and gl balance is not matching",
# 		"account receivables and gl balance is different like ap and gl",
# 		"account payables  and gl balance is not matching",
# 		"mismatch in ar and gl balance and ap and GL",
# 		"account receivables balance is not matching with the gl balance",
# 		"account receivables balance mismatch",
# 		"account payables balance mismatch",
# 		"Help with Accounts Receivable or Accounts Receivable not matching GL",
# 		"deviation in ap and gl balance",
# 		"deviation balance",
# 	]
# },

# LATIS_Sales = {
# 	name = "LATIS_Sales"
# 	sample_utterances = [
# 		"The acknowledgment of my sale order was printed, but status unchanged",
# 		"sales order status remain unchanged",
# 		"i have the sales order acknowledgment but status is not changing",
# 		"status remain unchanged for my sales order",
# 		"so status unchanged",
# 		"how to change the status of my sales order after acknowledge print",
# 		"sales order status issue after acknowledge print",
# 		"acknowledge is printed but status unchanged for sale order",
# 		"SO status issue",
# 		"sale order print is fine but status is wrong",
# 	]
# },

# LATIS_POApproval_Help = {
# 	name = "LATIS_POApproval_Help"
# 	sample_utterances = [
# 		"Purchase Order approval",
# 		"approbation po",
# 		"po approval",
# 		"help with po approval",
# 		"approval of purchase order",
# 	]
# },

# LATIS_TimeEntry_Help = {
# 	name = "LATIS_TimeEntry_Help"
# 	sample_utterances = [
# 		"Help with time entry",
# 		"time entry",
# 		"i need help in time entry",
# 		"time entry help",
# 		"time input module",
# 		"check for time entry issue",
# 	]
# },

# LATIS_Inquiry_Help = {
# 	name = "LATIS_Inquiry_Help"
# 	sample_utterances = [
# 		"Help with Inquiry",
# 		"sales order inquiry",
# 		"sales order investigation",
# 		"I need help in inquiry",
# 		"sales order inquiry module",
# 	]
# },

# LATIS_TimeIntegration_Help = {
# 	name = "LATIS_TimeIntegration_Help"
# 	sample_utterances = [
# 		"Help with Time integration",
# 		"time integration",
# 		"time integration help",
# 		"i need help in time integration",
# 		"time integration module",
# 	]
# },

# LATIS_AR_Invoice_Deletion = {
# 	name = "LATIS_AR_Invoice_Deletion"
# 	sample_utterances = [
# 		"I cannot use the same number as a deleted Account receivables invoice for a new invoice entry",
# 		"can't use same number for a new invoice entry which has same number as of deleted account receivables invoice",
# 		"deleted account receivables invoice and new invoice entry cannot have same number",
# 		"same number for deleted account receivables invoice and new invoice entry is not possible",
# 		"unable to use the same number as a deleted account",
# 		"issue in using the same number as a deleted AR",
# 		"same number cannot be used as a deleted AR invoice",
# 		"ar invoice deletion",
# 		"deleted ar invoice",
# 		"Help with Accounts Receivable Invoice Deletion",
# 		"removing invoices from accounts recievable",
# 	]
# },

# LATIS_Time_Entry = {
# 	name = "LATIS_Time_Entry"
# 	sample_utterances = [
# 		"I cannot see the line in Time Entry, although the assignment exists",
# 		"not able to view the line in Time Entry even the assignments exists",
# 		"my assignments exists but not able to see the line in time entry",
# 		"not able to see the line in Time Entry entry even my assignment exists.",
# 		"unable to see the line in Time Entry",
# 		"assignment is there but not able to see the line in time entry",
# 		"assignment exists but line in Time Entry entry not visible",
# 	]
# },

# LATIS_Supplier_AP_Invoice = {
# 	name = "LATIS_Supplier_AP_Invoice"
# 	sample_utterances = [
# 		"How To Check Supplier Payment or account payable invoice inquiry from purchasing module",
# 		"check supplier payment",
# 		"account payable invoice inquiry from purchase order",
# 		"check payable invoice inquiry",
# 		"i want to check for supplier payment",
# 		"ap invoice inquiry from purchasing module",
# 		"i want to do an ap invoice inquiry",
# 		"need help in checking supplier payment",
# 		"need help in raising ap invoice inquiry",
# 		"need to check supplier payment or ap invoice inquiry",
# 		"Help with Supplier AP Invoice",
# 	]
# },

# LATIS_SalesUpdate_LiveCheck = {
# 	name = "LATIS_SalesUpdate_LiveCheck"
# 	sample_utterances = [
# 		"Live check in LATIS for Sales update failure",
# 		"guided resolution help in sales update",
# 		"sales update failure check in latis",
# 		"need help in live check of sales update failure",
# 	]
# },

LATIS_CafIssue_LiveCheck = {
	name = "LATIS_CafIssue_LiveCheck"
	sample_utterances = [
		"Live Check in LATIS for CAF issue",
		"CAF guided resolution help",
		"want information for CAF guided resolution",
		"check live status of caf guided resolution",
		"caf issue check in latis",
	]
  },

LATIS_Unresolved = {
	name = "LATIS_Unresolved"
	type = "CodeHook"
	uri = "arn:aws:lambda:eu-west-1:353874849469:function:vwt-corp-latis-chatbot-iat"
	message_version = "1.0"
	parent_intent_signature = "AMAZON.FallbackIntent"
	}

LATIS_AP_Voucher_Automatic_Payment = {
	name = "LATIS_AP_Voucher_Automatic_Payment"
	sample_utterances = [
		"Creation Paydata",
		"how to create a payment group with {VoucherPaymentAP}",
		"{VoucherPaymentAP}",
		"payment group {VoucherPaymentAP}",
		"i need help in creating a payment group with {VoucherPaymentAP}",
		"Can you help in creating a payment group with {VoucherPaymentAP}",
		"i want to create a payment with {VoucherPaymentAP}",
	]
	slot = ["VoucherPaymentAP"]
	slot_name = "VoucherPaymentAP"
	slot_constraint = "Optional"
	slot_type = "VoucherPaymentAP"
	slot_type_version = "$LATEST"
	priority = "4"
	message_content_type = "PlainText"
	message_content = "Code Sepa Missing or Hold Payment Code Active or Missing Tax ID?"
	message_max_attempts = 2
}

LATIS_PR_PO = {
	name = "LATIS_PR_PO"
	sample_utterances = [
		"How To - {PR_PO} a purchase requisition PR or Purchase Order PO without the canceled Line",
		"{PR_PO} a purchase requisition PR or Purchase Order without canceled line",
		"{PR_PO} a purchase order without canceled line",
		"without  canceled line how can i {PR_PO}",
		"How To - {PR_PO} purchase requisition PR or purchase order PO Next approver",
		"step to {PR_PO} po or pr next approver",
		"how to {PR_PO}  for purchase requistion without canceled line",
		"{PR_PO} purchase requisition next approver",
		"{PR_PO} pr or po without the cancelled line",
		"{PR_PO} pr or po next approver",
		"steps to {PR_PO} Pr or Po next approver",
		"How to {PR_PO} PR-PO without the canceled line",
		"{PR_PO} the next approver of a purchase order",
		"How can i {PR_PO} who approved my po",
		"I want to {PR_PO} who approved my purchase requisition",
	]
	slot = ["PR_PO"]
	slot_name = "PR_PO"
	slot_constraint = "Optional"
	slot_type = "LATIS_Choice"
	slot_type_version = "$LATEST"
	priority = "1"
	message_content_type = "PlainText"
	message_content = "choice"
	message_max_attempts = 2
	}



LATIS_Create_Incident = {
	name = "LATIS_Create_Incident"
	sample_utterances = [
		"would u like to create an incident on service now?",
		"create an incident",
		"incident creation",
		"{LATIS_Choice}",
	]
	slot = ["LATIS_Choice"]
	slot_name = "LATIS_Choice"
	slot_constraint = "Optional"
	slot_type = "LATIS_Choice"
	slot_type_version = "$LATEST"
	priority = "4"
	message_content_type = "PlainText"
	message_content = "choice"
	message_max_attempts = 2
}



LATIS_ChangeLanguage = {
	name = "LATIS_ChangeLanguage"
	slot = ["Lang"]
	slot_name = "Lang"
	slot_constraint = "Required"
	slot_type = "LangCode"
	slot_type_version = "$LATEST"
	priority = "1"
	message_content_type = "PlainText"
	message_content = "Please type your preferred language"
	message_max_attempts = 2

	sample_utterances = [
		"language change to {Lang}",
		"I want to change my language to {Lang}",
		"change language to {Lang}",
		"switch language to {Lang}",
	]
}


VendorCreation =  {
	name = "VendorCreation"

	# uri= "arn:aws:lambda:eu-west-1:353874849469:function:vwt-corp-latis-chatbot-"
	# type = "CodeHook"
	# message_version = "1.0"	

	slot = ["VendorCreation"]
	slot_name = "Lang"
	slot_constraint = "Optional"
	slot_type = "VendorCreation"
	slot_type_version = "$LATEST"
	priority = "3"
	message_content_type = "PlainText"
	message_content = "New or Same Vendor?"
	message_max_attempts = 3

	sample_utterances = [
		"Create {VendorCreation} vendor as a customer",
		"customer can be created as a {VendorCreation} vendor",
		"{VendorCreation} vendor can be created as a customer",
		"How to create {VendorCreation} vendor as a customer",
		"need to assign {VendorCreation} vendor as a customer",
		"how to create a {VendorCreation} vendor",
		"how to assign {VendorCreation} as a customer",
		"{VendorCreation} vendor assignment as a customer",
		"can vendor act as a {VendorCreation} customer",
		"creating {VendorCreation} as a customer",
		"creation of a {VendorCreation} vendor",
		"process to create a {VendorCreation} vendor",
		"{VendorCreation} vendor creation",
		"steps to create {VendorCreation} vendor",
		"customers {VendorCreation} suppliers",
		"using customer {VendorCreation} supplier",
	]
}

LATIS_Fixed_Assets = {
	name = "LATIS_Fixed_Assets"
	# uri= "arn:aws:lambda:eu-west-1:353874849469:function:vwt-corp-latis-chatbot-"
	# type = "CodeHook"
	# message_version = "1.0"
	slot = ["IsDepreciateDispose"]
	slot_name = "IsDepreciateDispose"
	slot_constraint = "Optional"
	slot_type = "IsDepreciataDispose"
	slot_type_version = "$LATEST"
	priority = "2"
	message_content_type = "PlainText"
	message_content = "Fixed Asset Depreciation or Fixed Asset Disposal"
	message_max_attempts = 3

	sample_utterances = [
		"How to check if a fixed asset was {IsDepreciateDispose} on a particular date?",
		"How to check fixed asset were {IsDepreciateDispose} on a particular date?",
		"fixed asset {IsDepreciateDispose}",
		"validity of a fixed asset check",
		"need to check if fixed asset was {IsDepreciateDispose}",
		"{IsDepreciateDispose} of a fixed asset",
		"need help in checking if a fixed asset was {IsDepreciateDispose}",
		"check if fixed asset was {IsDepreciateDispose} on a particular date",
		"I cannot {IsDepreciateDispose} an asset",
		"{IsDepreciateDispose} of asset is not happening",
		"face issue with {IsDepreciateDispose}",
		"error in {IsDepreciateDispose} of a fixed asset",
		"i want to check if fa was {IsDepreciateDispose}",
		"Help with {IsDepreciateDispose}",
		"Help with  Fixed Assets {IsDepreciateDispose}",
		"{IsDepreciateDispose} of capital assets",
		"how can i {IsDepreciateDispose} an asset",
	]
}



LATIS_Help = {
	
	name = "HelpMenu"

	# uri= "arn:aws:lambda:eu-west-1:353874849469:function:vwt-corp-latis-chatbot-"
	# type = "CodeHook"
	# message_version = "1.0"

	slot = ["HelpMenu"]
	slot_name = "HelpMenu"
	slot_constraint = "Optional"
	slot_type = "HelpMenu"
	slot_type_version = "$LATEST"
	priority = 2
	message_content_type = "PlainText"
	message_content = "Please type the Module Name. Ex \"Finance\""
	message_max_attempts = 1
	sample_utterances = [
		"need help in {HelpMenu}",
		"help in {HelpMenu}",
		"{HelpMenu}",
		"{HelpMenu} module help",
		"help in {HelpMenu} module",
		"help with {HelpMenu}",
		"help",
		"aide",
		"{HelpMenu} Assistance",
		"what can you help me with",
		"how can you help me",
		"help me with something",
		"Help!",
		"what can you do",
		"help me",
	]
}


}

