output "arn" {
  description = "Bucket arn"
  value       = var.include_cors ? aws_s3_bucket.with_cors[0].arn : aws_s3_bucket.without_cors[0].arn
}

output "name" {
  description = "Bucket name"
  value       = var.include_cors ? aws_s3_bucket.with_cors[0].bucket : aws_s3_bucket.without_cors[0].bucket
}

output "id" {
  description = "Bucket id"
  value       = var.include_cors ? aws_s3_bucket.with_cors[0].id : aws_s3_bucket.without_cors[0].id
}

output "bucket_domain_name" {
  value = var.include_cors ? aws_s3_bucket.with_cors[0].bucket_domain_name : aws_s3_bucket.without_cors[0].bucket_domain_name
}