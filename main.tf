provider "aws" {
  version = "~> 2.0"
  profile    = "default"
  region     = "us-east-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "prakash-demo-00001"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
