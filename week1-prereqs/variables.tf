# variables.tf
# This file defines all the customizable inputs for our Terraform configuration.
# Using variables makes the code reusable and easier to understand.

variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the entire VPC (the big network)"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet (resources that can face the internet)"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet (internal resources only)"
  type        = string
  default     = "10.0.2.0/24"
}

variable "environment" {
  description = "Environment name (dev, test, prod, etc.)"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Name of the project (used in tags)"
  type        = string
  default     = "bootcamp"
}
