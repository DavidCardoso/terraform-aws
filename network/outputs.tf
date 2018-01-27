# AWS security group allow_ssh
output "sg_allow_ssh_id" {
  value = "${aws_security_group.allow_ssh.id}"
}

# AWS security group allow_http
output "sg_allow_http_id" {
  value = "${aws_security_group.allow_http.id}"
}

# AWS VPC vpc01
output "vpc01" {
  value = "${aws_vpc.vpc01.id}"
}

# AWS public-subnet vpc01_public01_id
output "vpc01_public01_id" {
  value = "${aws_subnet.vpc01_public01.id}"
}

# AWS public-subnet vpc01_public02_id
output "vpc01_public02_id" {
  value = "${aws_subnet.vpc01_public02.id}"
}
