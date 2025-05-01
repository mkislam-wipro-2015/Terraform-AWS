/*variable "vpc_id" {
  description = "The VPC ID to associate the security group with"
  type        = string
} */

output "alb_sg_id" {
  description = "ID of the ALB security group"
  value       = aws_security_group.alb_sg.id
}
