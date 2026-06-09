variable "aws_region" {
  description = "AWS region for all resources"
  type        = string
  default     = "eu-central-1"
}

variable "project" {
  description = "Project name used as a prefix for resource naming"
  type        = string
  default     = "vr2go-main"
}

variable "env" {
  description = "Deployment environment"
  type        = string
  default     = "main"
}
