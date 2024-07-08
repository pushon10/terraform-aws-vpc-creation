# 1. Declare a variable for AWS region
variable "aws_region" {
  # 2. Description of the variable
  description = "The AWS region to create resources in"
  # 3. Type of the variable (string in this case)
  type        = string
  # 4. Default value of the variable
  default     = "us-east-1"
}

# 5. Declare a variable for VPC CIDR block
variable "vpc_cidr" {
  # 6. Description of the variable
  description = "CIDR block for the VPC"
  # 7. Type of the variable (string in this case)
  type        = string
  # 8. Default value of the variable
  default     = "10.0.0.0/16"
}

# 9. Declare a variable for public subnet CIDR block
variable "public_subnet_cidr" {
  # 10. Description of the variable
  description = "CIDR block for the public subnet"
  # 11. Type of the variable (string in this case)
  type        = string
  # 12. Default value of the variable
  default     = "10.0.1.0/24"
}

# 13. Declare a variable for private subnet CIDR block
variable "private_subnet_cidr" {
  # 14. Description of the variable
  description = "CIDR block for the private subnet"
  # 15. Type of the variable (string in this case)
  type        = string
  # 16. Default value of the variable
  default     = "10.0.2.0/24"
}




