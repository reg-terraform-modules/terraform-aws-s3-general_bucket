# Required variables:
variable "env" {
  description = "Environment (dev/prod)"
  type        = string
}

variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
}

#Optional variables - default values used unless others specified:
variable "bucket_acl" {
  description = "Canned ACL - see https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl for options"
  type        = string
  default     = "private"
}

variable "enable_versioning" {
  description = "Enable bucket versioning - cannot be turned off once on"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Defaults to no tags."
  type        = map(string)
  default = {
    "tag" = "none given"
  }
}

variable "include_cors" {
  description = "Option to include cors for bucket"
  default = false
}

variable "cors_rules" {
  description = "Optional cors rules " 
  default = {
    "allowed_headers" = [""]
    "allowed_methods" = [""]
    "allowed_origins" = [""]
    "expose_headers"  = [""]
    "max_age_seconds" = ""
  }
}