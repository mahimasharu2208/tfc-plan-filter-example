variable "bucket_prefix" {
  description = "S3 bucket prefix (used to simulate changes)"
  type        = string
  default     = "plan-filter-example-"
}

variable "tags_env" {
  description = "Environment tag value (used to simulate changes)"
  type        = string
  default     = "Stage"
}
