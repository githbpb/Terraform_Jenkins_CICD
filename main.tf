resource "aws_s3_bucket" "bucket1" {
	bucket = "prabhatkr-first-bucket"
}

resource "aws_s3_bucket" "bucket2" {
    
}

provider "aws" {
    region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket         = "prabhatkr-s3bucket-26thjuly"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "prabhatkr-26thjuly-dblocks"
    encrypt        = true
  }
}
