output "arn" {
  description = "Bucket arn"
  value       = aws_s3_bucket.this.arn
}

output "name" {
  description = "Bucket name"
  value       = aws_s3_bucket.this.bucket
}

output "id" {
  description = "Bucket id"
  value       = aws_s3_bucket.this.id
}

output "bucket_domain_name" {
  description = "Bucket domain name used by for instance cloudfront"
  value       = aws_s3_bucket.this.bucket_domain_name
}