resource "aws_s3_bucket" "this" {
  bucket = lower(var.bucket_name)
  force_destroy = true
}
