terraform {
  source = "tfr:///terraform-aws-modules/vpc/aws//examples/simple?version=5.9.0"
}

inputs = {

}

locals {

  parsed = regex(".*/(?P<env>.*?)/.*", get_terragrunt_dir())
  env    = local.parsed.env
}

remote_state {
  backend = "s3"
  config = {
    bucket = "terragrunt-testing-pairing"
    region = "ap-south-1"
    key    = "terraform_terragrunt.tfstate"
    dynamodb_table = "terragrunt-testing-pairing"
    encrypt = true
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}