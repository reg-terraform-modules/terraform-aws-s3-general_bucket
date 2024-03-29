# Resource/function: s3/general_bucket

## Purpose
Generic code for generating s3 buckets

## Description
Generates general s3 buckets.

## Terraform functions

### Data sources

### Resources
- `aws_s3_bucket`
    - generates the bucket

## Input variables
### Required
- `bucket_name`
    - defines the name of the bucket

### Optional (default values used unless specified)
- `tags`
    - tags added to role - should be specified jointly with all other resources in the same module
    - default: `"tag" = "none given"`
- `enable_versioning`
    - Strin for enabling bucket versioning - cannot be turned off once on
    - default: `Disabled` (Valid alternativ: `Enabled` or `Suspended`)
- `include_cors`
    - Boolean for including CORS policy on bucket
    - default: `false`
- `cors_rules`
    - Definition of CORS rules - see variables file for syntax
    - default: Dummy values


## Output variables
- `arn`
    - `arn` of the generated bucket
- `name`
    - `name` of the generated bucket
- `id`
    - `id` of the generated bucket
- `bucket_domain_name`
    - Domain name of the generated bucket

## Example use
The below example generates a bucket using default input where available.
```sql

```

## Further work
