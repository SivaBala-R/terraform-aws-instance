variable "project" {
  type = string 
}

variable "environment" {
  type = string
}

variable "component" {
  type = string
}

variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use for the instance"
  type        = string
  default = "t3.micro"

  validation {
    condition = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
    error_message = "Instance type should be either t3.micro or t3.small"
  }
}

variable "sg_ids" {
    type = list(string)
}

variable "ec2_tags" {
  default = {}
  type = map  
}
