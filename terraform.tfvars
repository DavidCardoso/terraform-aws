# var.aws_version
aws_version = "1.7"

# var.aws_user_profile
aws_user_profile = "default"

# var.aws_credentials
aws_credentials = "$HOME/.aws/credentials"

# var.aws_region
aws_region = "us-west-2"

# var.aws_vpc[]
aws_vpc = [
  "vpc-3a852843"
]

# var.aws_subnet[]
aws_subnet = {
  pub = "subnet-35f82e6f"
  pvt = "subnet-d7fa2c8d"
}

# var.aws_ami[]
aws_ami = {
    aws = "ami-7f43f307" 
    ubuntu = "ami-1ee65166" 
    redhat = "ami-223f945a"
    deep-aws = "ami-ed48f795"
    deep-ubuntu = "ami-ee48f796"
    ms-server = "ami-b2e756ca"
}
