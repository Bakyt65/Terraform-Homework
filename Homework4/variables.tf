variable region {
  default = "us-east-2"
  type = string
  description = "Provide a region"
}
variable "key_name" {
  type        = string
  default     = "deployer-key"
  description = "The name of the SSH key pair"

}

variable instance_type {
  default = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
  default     = ""
}


variable instance_name {
  default = "Hw-4"
}

variable port {
  type = list
  default = [22,80,443]
}
