#here we are storing the state file in aws s3 bucket#
terraform {
backend "s3" {

bucket = "deepthi-bucket-77"
key = "prod/terraform.tfstate"
region = "eu-north-1"
}
}