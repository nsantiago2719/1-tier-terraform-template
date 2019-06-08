variable "subnet-id" {
  type        = "string"
  description = "Subnet that is going to be use by the instance"
}

variable "vpc-id" {
  type        = "string"
  description = "VPC ID for the security group instance"
}

variable "project" {
  type        = "string"
  description = "Subnet that is going to be use by the instance"
  default     = "simple-project"
}

variable "key-pair" {
  type        = "string"
  description = "Allowed public key pair on the instance"
}
