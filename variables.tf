variable "selected_region" {
  description = "AWS region for deployment"
  type        = string
}

variable "vpc_name" {
  description = "VPC Name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "amis" {
  description = "Map of AMIs by region"
  type        = map(string)
}

variable "key_name" {
  description = "SSH Key Name"
  type        = string
}

variable "public_subnet" {
  description = "List of public subnet IDs"
  type        = list(string)
}

variable "private_subnet" {
  description = "List of private subnet IDs"
  type        = list(string)
}
