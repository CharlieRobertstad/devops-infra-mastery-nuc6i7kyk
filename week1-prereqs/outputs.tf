# outputs.tf
# This file defines what information Terraform should display
# after it finishes running (terraform apply or terraform output).
# Outputs are extremely useful for learning and for passing
# information to other systems or scripts.

output "vpc_id" {
  description = "The ID of the VPC we created"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = aws_subnet.private.id
}

output "vpc_cidr" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.main.cidr_block
}
