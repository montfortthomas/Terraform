# provider.tf

provider "aws" {
  #region     = var.region
  # access_key = var.accessKey
  # secret_key = var.secretKey
}

terraform {
  backend "s3" {}
}