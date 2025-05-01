resource "aws_instance" "webserver100" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Instance-${lower(var.bucket_prefix)}"
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "${lower(var.bucket_prefix)}-${random_id.bucket_id.hex}"
  force_destroy = true
}

resource "random_id" "bucket_id" {
  byte_length = 4
}
