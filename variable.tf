### variable.tf
variable "aws_region" {
  description = "AWS region on which we will setup the rabbitmq cluster"
  default = "us-east-1"
}
variable "aws_amis" {
  description = "Ubuntu 18.04 Base AMI to launch the instances"
  default = {
  us-east-1 = "ami-08d5c1bf4a30669a0"
  }
}
variable "instance_type" {
  description = "Instance type"
  default = "t2.micro"
}
variable "key_path" {
  description = "SSH Public Key path"
  default = ""
}
variable "key_name" {
  description = "Desired name of Keypair..."
  default = "main"
}
