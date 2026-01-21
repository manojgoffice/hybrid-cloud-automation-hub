variable "aws_region" {
  description = "AWS Region for deployment"
  default     = "us-east-1"
}

variable "instance_type" {
  default = "t3.medium"
}

variable "deployment_target" {
  description = "Environment toggle: aws or on_prem"
  type        = string
}
