# terraform {
#   required_version = "0.14.4"
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 3.0"
#     }
#   }
# }

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags   =      {
        Name = "my_vpc"
  } 
}

resource "aws_subnet" "public_subnet" {
  count      = 3
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "${cidrsubnet(var.vpc_cidr_block, 8, count.index)}"

  tags = {
    Name = "public_subnet-${count.index + 0}"
  }
}

resource "aws_subnet" "private_subnet" {
  count      = 3
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "${cidrsubnet(var.vpc_cidr_block, 8, count.index + 3)}"

  tags = {
    Name = "private_subnet-${count.index + 0}"
  }
}

