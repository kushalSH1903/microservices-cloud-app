variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Name prefix for all resources"
  type        = string
  default     = "microservices-devops"
}

variable "instance_type" {
  description = "EC2 instance type (check free tier eligibility for your account)"
  type        = string
  default     = "t3.micro"
}

variable "ssh_cidr" {
  description = "Your public IP in CIDR form, e.g. 203.0.113.10/32. SSH is allowed only from here."
  type        = string
}

variable "http_cidr" {
  description = "Who may reach the app on port 80"
  type        = string
  default     = "0.0.0.0/0"
}

variable "public_key_path" {
  description = "Path to your SSH PUBLIC key (never the private key)"
  type        = string
  default     = "~/.ssh/devops-key.pub"
}

variable "ecr_repositories" {
  description = "One ECR repository per microservice"
  type        = list(string)
  default     = ["user-service", "product-service", "order-service"]
}
