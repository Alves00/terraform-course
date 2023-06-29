variable "name" {
  type        = string
  description = "Bucket name"
}

variable "tags" {
  type        = map(string)
  description = ""
  default     = {}
}

variable "key_prefix" {
  type    = string
  default = ""
}

variable "files" {
  type    = string
  default = ""
}

variable "acl" {
  type        = string
  description = ""
  default     = "private"
}
