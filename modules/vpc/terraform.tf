variable "vpc-cidr-block" {
  type        = "string"
  description = "CIDR block of the vpc"
  default     = "10.0.0.0/16"
}

variable "subnet-1-cidr-block" {
  type        = "string"
  description = "CIDR block of availability-1 subnet resource"
  default     = "10.0.1.0/24"
}

variable "subnet-2-cidr-block" {
  type        = "string"
  description = "CIDR block of availability-1 subnet resource"
  default     = "10.0.10.0/24"
}

variable "project" {
  type        = "string"
  description = "Assigned project for the VPC"
  default     = "simple-project"
}

variable "environment" {
  type        = "string"
  description  = "Specific workspace where the VPC will be created"
  default     = "development"
}
