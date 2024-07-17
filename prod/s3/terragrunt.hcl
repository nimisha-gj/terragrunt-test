include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../modules//s3"
}

inputs = {
  bucket_name = "my-very-unique123-production-bucket"
  tags = {
    Environment = "Production"
    Name        = "my-production-bucket"
  }
}