provider "aws" {
  region = "us-west-2"
  access_key = "AKIA2IAVJ6GOWQJ5O7PY"
  secret_key = "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"
}

terraform {
  backend "s3" {
    bucket = "tfb1tr123"
    encrypt = true
    dynamodb_table = "tftable"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}



resource "aws_vpc" "demo1" {
  cidr_block = "10.5.0.0/16"
  tags = {
      Name = "VPC4"
  }
  
}
