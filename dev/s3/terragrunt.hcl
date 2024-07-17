include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../modules//s3"
}

include "tags" {
  path = find_in_parent_folders("base/s3_common.hcl")
}

inputs = {
  bucket_name = "my-very-unique123-development-bucket"
  tags = {
    "Test" = "override_type"
  }
}
