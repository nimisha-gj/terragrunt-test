provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket         = "testing-terragrunt-infraspec"    # Replace with your S3 bucket name
    key            = "terragrunt.tfstate" # Replace with the path where the state file will be stored
    region         = "ap-south-1"                      # Replace with your AWS region
    dynamodb_table = "testing-terragrunt-infraspec"            # Replace with your DynamoDB table name
    encrypt        = true
  }
}