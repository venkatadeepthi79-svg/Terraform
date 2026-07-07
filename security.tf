#creating the security grops for the instance#

resource "aws_security_group" "mySG" {
name = "Terraform-SG"
description = "this SG is created using the terraform"

ingress {
from_port = 22
to_por = 22
protocol = "tcp"
cidr_block = ["0.0.0.0/0"]
}

ingress {
from_port = 80
to_port = 80
protocol = "tcp"
cidr_block = ["0.0.0.0/0"]
}

egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_block = ["0.0.0.0/0"]
}