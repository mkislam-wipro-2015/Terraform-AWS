variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "aws_profile" {
  description = "AWS CLI profile name"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami_id" {
  description = "AMI ID to use for EC2"
  type        = string
}

variable "instance_name" {
  description = "Tag Name for EC2 Instance"
  type        = string
}

variable "bucket_name" {
  description = "S3 Bucket Name"
  type        = string
}
