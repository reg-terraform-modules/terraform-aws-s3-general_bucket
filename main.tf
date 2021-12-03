locals {
  bucket_name = "${var.bucket_name}-${var.env}"
}

resource "aws_s3_bucket" "this" {
  bucket = local.bucket_name
  acl    = var.bucket_acl
  tags   = var.tags

  cors_rule {
    allowed_headers = var.cors_rules["allowed_headers"]
    allowed_methods = var.cors_rules["allowed_methods"]
    allowed_origins = var.cors_rules["allowed_origins"]
    expose_headers  = var.cors_rules["expose_headers"]
    max_age_seconds = var.cors_rules["max_age_seconds"]
  }

  versioning {
    enabled = var.enable_versioning
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


}