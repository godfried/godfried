variable "remote_state_bucket" {
  type        = "string"
  description = "Name of the S3 bucket which stores Terraform state"
  default     = "godfried-de-terraform-state"
}

variable "aws_profile" {
  type        = "string"
  description = "AWS credentials profile"
  default     = "personal"
}

variable "aws_region" {
  type        = "string"
  description = "AWS region to use"
  default     = "eu-central-1"
}

