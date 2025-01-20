provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_s3_bucket" "bucket1" {
  bucket        = "makmal1"
  force_destroy = true

}


# terraform import aws_s3_bucket.bucket2 makmal2

resource "aws_s3_bucket" "bucket2" {
  bucket        = "makmal2"
  force_destroy = true

}


# terraform import aws_s3_bucket.bucket3 makmal3   

resource "aws_s3_bucket" "bucket3" {
  bucket        = "makmal3"
  force_destroy = true

}