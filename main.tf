locals {
  bucket_name = "${var.bucket_name}"
}

resource "aws_s3_bucket" "this" {
  bucket = local.bucket_name
  tags   = var.tags
}

resource "aws_s3_bucket_cors_configuration" "this"{
  count = var.include_cors && var.cors_rules != null ? 1 : 0

  bucket = aws_s3_bucket.this.bucket

  dynamic "cors_rule" {
    for_each = var.cors_rules
    content {
      allowed_headers = var.cors_rules["allowed_headers"]
      allowed_methods = var.cors_rules["allowed_methods"]
      allowed_origins = var.cors_rules["allowed_origins"]
      expose_headers  = var.cors_rules["expose_headers"]
      max_age_seconds = var.cors_rules["max_age_seconds"]
    }
  }
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = var.enable_versioning
  }
}

/*  dynamic "server_side_encryption_configuration" {
    for_each = var.use_encryption ? [var.sse_algorithm] : []
    content {
      rule {
        apply_server_side_encryption_by_default {
          sse_algorithm     = var.sse_algorithm
        }
      }
    }
  }
*/

