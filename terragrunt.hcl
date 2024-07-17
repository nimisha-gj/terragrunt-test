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
    bucket = "example-buckets-${local.env}"
    region = "us-east-2"
    key    = "${path_relative_to_include()}/terraform.tfstate"
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}