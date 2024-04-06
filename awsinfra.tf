#This is the Provider block. Provider configurations allow Terraform to interact with cloud providers.
#The access key and secret key are identified to satisfy the requirement of using an AWS account with security
#credentials.

provider "aws" {

 region = "us-east-1"

 access_key = "AKIA5MWGU32KHU5ZKTIG"

 secret_key = ""

}

#Each resource block describes 1 or more infrastructure objects.

#AWS security group to identify the rules for ingress and egress traffic.

resource "aws_security_group" "mysg" {

 name = "mysg"

  description = "allow inbound SSH"

  ingress{

   from_port = 22

   to_port = 22

   protocol = "tcp"

   cidr_blocks = ["0.0.0.0/0"]

   ipv6_cidr_blocks = ["::/0"]

   }

  egress{

   from_port = 0

   to_port = 0
                                                                                                                                                                                                     1,1           Top
