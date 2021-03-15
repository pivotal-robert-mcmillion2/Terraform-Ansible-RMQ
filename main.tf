terraform {
  #required_version = "0.12.10"
  required_version = "0.14.7"
}

provider "aws" {
  region  = "${var.aws_region}"
  profile = "default"
}

resource "aws_instance" "node1" {
    ami               = "${lookup(var.aws_amis, var.aws_region)}"
    instance_type     = "${var.instance_type}"
    key_name          = "${var.key_name}"
    # user_data         = "${file("${var.bootstrap_path}")}"
    associate_public_ip_address = true
    vpc_security_group_ids = ["${aws_security_group.rabbitsg.id}"]
    tags = {
        Name  = "rabbit-node1"
      }
}
resource "aws_instance" "node2" {
    ami               = "${lookup(var.aws_amis, var.aws_region)}"
    instance_type     = "${var.instance_type}"
    key_name          = "${var.key_name}"
    # user_data         = "${file("${var.bootstrap_path}")}"
    associate_public_ip_address = true
    vpc_security_group_ids = ["${aws_security_group.rabbitsg.id}"]
    tags = {
        Name  = "rabbit-node2"
      }
}
resource "aws_instance" "node3" {
    ami               = "${lookup(var.aws_amis, var.aws_region)}"
    instance_type     = "${var.instance_type}"
    key_name          = "${var.key_name}"
    # user_data         = "${file("${var.bootstrap_path}")}"
    associate_public_ip_address = true
    vpc_security_group_ids = ["${aws_security_group.rabbitsg.id}"]
    tags = {
        Name  = "rabbit-node3"
      }
}
