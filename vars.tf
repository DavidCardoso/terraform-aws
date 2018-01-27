# main default variables

variable "aws_version" {
  default = "1.7"
}

variable "aws_region" {
  default = "us-west-2"
}

variable "aws_credentials" {
  default = "$HOME/.aws/credentials"
}

variable "aws_user_profile" {
  default = "default"
}

variable "aws_ami" {
  default = {
    aws = "ami-7f43f307" 
    ubuntu = "ami-1ee65166" 
    redhat = "ami-223f945a"
    deep-aws = "ami-ed48f795"
    deep-ubuntu = "ami-ee48f796"
    ms-server = "ami-b2e756ca"
  }
}

variable "aws_vpc" {
  default = [
    "vpc-3a852843"
  ]
}

variable "aws_subnet" {
  default = {
    pub = "subnet-35f82e6f"
    pvt = "subnet-d7fa2c8d"
  }
}