terraform {  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "middebucket-1252"
    key    = "Development"
    region = "us-east-2"
    dynamodb_table = "Devlopment_locking"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
  profile = "default"
}