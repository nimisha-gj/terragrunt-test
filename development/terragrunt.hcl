include {
  path = find_in_parent_folders()
}

terraform {
    source = "tfr:///terraform-aws-modules/vpc/aws//examples/simple?version=5.9.0"
}

