# AWS VPC
resource "aws_vpc" "vpc01" {
  cidr_block="1.0.0.0/16"

  tags {
    Name="VPC via terraform"
  }
}

# AWS public subnet
resource "aws_subnet" "vpc01_public01" {
  vpc_id="${aws_vpc.vpc01.id}"
  cidr_block="1.0.1.0/24"

  tags {
    Name="public-subnet via terraform"
  }
}

# AWS public subnet
resource "aws_subnet" "vpc01_public02" {
  vpc_id="${aws_vpc.vpc01.id}"
  cidr_block="1.0.2.0/24"

  tags {
    Name="public-subnet via terraform"
  }
}

# AWS security group SSH
resource "aws_security_group" "allow_ssh" {
  name = "allow_ssh"
  description  = "Allow SSH connections."
  vpc_id = "${aws_vpc.vpc01.id}"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    name = "security group via terraform"
  }
}

# AWS security group HTTP
resource "aws_security_group" "allow_http" {
  name="allow_http"
  description="Allow HTTP traffic"
  vpc_id="${aws_vpc.vpc01.id}"

  ingress {
    from_port=80
    to_port=80
    protocol="tcp"
    cidr_blocks=["0.0.0.0/0"]
  }

  egress {
    from_port=0
    to_port=0
    protocol="-1"
    cidr_blocks=["0.0.0.0/0"]
  }

  tags {
    name = "security group via terraform"
  }
}
