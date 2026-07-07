#here we are creating the s3 bucket and enabiling the versioning for bucket#
resource "aws_s3_bucket" "s3-bucket" {
bucket = "deepthi-bucket-77"
}

resource "aws_s3_bucket_versioning" "version" {
bucket = aws_s3_bucket.s3-bucket.id

versioning_configuration {
status = "Enabled"
}
}
