# AWS security group SSH
resource "aws_security_group" "ssh" {
  name = "allow_ssh"
  description  = "Allow SSH connections."
  vpc_id = "vpc-3a852843"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "allow_ssh"
  }
}