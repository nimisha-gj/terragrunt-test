locals {
  development_region = "us-west-1"
  staging_region     = "us-west-2"
  production_region  = "us-east-1"
}

remote_state {
  backend = "s3"
  config = {
    bucket         = "terragrunt-testing-pairing"
    region         = "ap-south-1"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    dynamodb_table = "terragrunt-testing-pairing"
    encrypt        = true
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}
