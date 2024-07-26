resource "aws_s3_bucket" "bucket1" {
	bucket = "prabhat-first-bucket"
}

resource "aws_s3_bucket" "bucket2" {
    
}

provider "aws" {
    region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket         = "prabhat-s3bucket-date"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "prabhat-date-dblocks"
    encrypt        = true
  }
}
