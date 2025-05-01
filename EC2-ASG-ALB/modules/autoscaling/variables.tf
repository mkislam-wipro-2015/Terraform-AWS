variable "vpc_id" {}
variable "subnets" {
  type = list(string)
}
variable "target_group_arn" {}
variable "ami_id" {}
variable "instance_type" {}
