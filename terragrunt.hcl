  terraform {
  source = "terraform-aws-modules/security-group/aws//modules/http-80"
}

inputs = {
  name                = "testing"
  description         = "Testing integration between terragrunt and atlantis"
  vpc_id              = "vpc-12345678"
  ingress_cidr_blocks = ["10.10.0.0/16"]
}