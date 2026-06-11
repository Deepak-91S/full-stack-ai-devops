terraform {

  
  backend "s3" {
    bucket = "terraform-state-for-project-11-06-2026"
    key = "dev/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "tf-remote-state-locks"
    encrypt = true
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}


provider "aws" {
  region  = var.aws_region
  profile = "Dev-Deepak10"
}
