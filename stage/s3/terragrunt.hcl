include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../modules//s3"
}

inputs = {
  bucket_name = "my-very-unique123-staging-bucket"
  tags = {
    Environment = "Staging"
    Name        = "my-staging-bucket"
  }
}
