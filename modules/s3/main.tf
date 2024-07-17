resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  tags = var.tags
}

output "bucket_id" {
  value = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.this.arn
}
