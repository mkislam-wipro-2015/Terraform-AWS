variable "aws_region" {
  description = "The AWS region to use"
  type        = string
}

variable "aws_profile" {
  description = "AWS CLI profile name"
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "bucket_prefix" {
  description = "Prefix name for the S3 bucket"
  type        = string
}
