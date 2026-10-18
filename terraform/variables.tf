
variable "aws_region" {
  description = "AWS region where the platform will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type for the application server"
  type        = string
  default     = "t3.micro"
}

variable "project_name" {
  description = "Project name used to identify AWS resources"
  type        = string
  default     = "aws-nginx-platform"
}

variable "deployment_bucket" {
  description = "S3 bucket containing the application deployment archive"
  type        = string
  default     = "aws-nginx-platform-623244137074-us-east-1"
}

