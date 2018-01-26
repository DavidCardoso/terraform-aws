# importing network module
module "network" {
    source = "./network"
}

# AWS provider
provider "aws" {
    version                 = "1.7"
    region                  = "${var.aws_region}"
    shared_credentials_file = "${var.aws_credentials}"
    profile                 = "${var.aws_user_profile}"
}

# AWS EC2 instance
resource "aws_instance" "ec2-test" {
    ami = "${var.aws_ami["aws"]}"
    instance_type = "t2.micro"
    count = 2
    source_dest_check = false
    subnet_id = "${var.aws_subnet["pub"]}"

    vpc_security_group_ids = [
        "${module.network.ssh_id}",
    ]

    connection {
        user = "ec2-user"
    }

    tags {
        Name = "Terraform test"
    }
}