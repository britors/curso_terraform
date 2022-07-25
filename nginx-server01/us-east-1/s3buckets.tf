
resource "aws_s3_bucket" "dev4" {
  bucket = var.bucket["name"]
}

resource "aws_s3_bucket_acl" "aws_s3_bucket_acl_dev4" {
  bucket = aws_s3_bucket.dev4.id
  acl    = var.bucket["acl"]
}