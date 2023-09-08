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

variable "enable_versioning" {
  description = "Enable bucket versioning - cannot be turned off once on"
  type        = string
  default     = "Disabled"
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