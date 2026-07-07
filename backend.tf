#here we are storing the state file in aws s3 bucket and  enabled the state locking#
terraform {
backend "s3" {

bucket = "deepthi-bucket-77"
key = "prod/terraform.tfstate"
region = "eu-north-1"
use_lockfile = "true"
}
}
