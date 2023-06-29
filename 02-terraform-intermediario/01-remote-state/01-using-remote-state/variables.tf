variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "ami" {
  type        = string
  description = ""
  default     = "ami-05e411cf591b5c9f6"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t3.micro"
}
