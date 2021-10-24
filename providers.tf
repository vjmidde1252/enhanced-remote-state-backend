#Welcome Vijay Midde
terraform {  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "remote" {
    organization = "midde-org"

    workspaces {
      name = "enhanced-remote-state-backend"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
}