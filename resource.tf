#setp-2#
resource "aws_instance" "webserver" {
ami = "ami-0c1bed477f4225f83"
instance_type = "t3.micro"
tag = {
Name = "Myserver"
}


key_name = "my-first-keypair"
availability_zone = "eu-north-1a"
vpc_security_group_ids = [aws_security_group.mySG.id]
root_block_device {
volume_size = 10
}
}