variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "instance_tenancy" {
  type    = string
  default = "default"
}

variable "general_tag" {
  type    = map(string)
  default = {}
}

variable "vpc_tag" {
  type    = map(string)
  default = {}
}

variable "name" {
  type    = string
  default = "my_vpc"
}

variable "public_subnet" {
  type    = string
  default = ""
}

variable "private_subnet" {
  type    = string
  default = ""
}