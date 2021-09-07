data "aws_region" "current" {}

data "aws_caller_identity" "current" {}


data "aws_iam_role" "roles" {
  name = local.role_name
}




