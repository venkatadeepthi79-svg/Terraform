#Output displays useful information after Terraform creates resources#

output "details" {
value = [aws_instance.eu-server.id , aws_instance.eu-server.public_ip , aws_instance.eu-server.private_ip]
}