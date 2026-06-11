
# Write, Plan, Apply



# Variables
variable "instance_type" {
  type = string
  description = "EC2 instance type"
  default = "t3.micro"
}

variable "instance_name" {
  type = string
  description = "EC2 instance name"
  default = "terraform-demo-ec2-instance"
}

variable "enable_monitoring" {
  type = bool
  description = "EC2 instance monitoring"
  default = false
}

# --------------------------------
# Terraform block
# --------------------------------
# This block tells Terraform:
# 1. Which providers are required
# 2. Where to download them from
# 3. Which version to use

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}



# --------------------------------
# Provider configuration
# --------------------------------
# This tells Terraform:
# - Which cloud to talk to (AWS)
# - Which region to create resources in

provider "aws" {
  region  = "us-east-2"
  profile = "Dev-Deepak10"
}


# --------------------------------
# Resource block (EC2 instance)
# --------------------------------
# This block defines an AWS EC2 instance


resource "aws_instance" "demo_ec2" {
    ami = "ami-0c6ac5f2fed2981b0"
    # instance_type = "t2.micro"
    instance_type = var.instance_type
    monitoring = var.enable_monitoring

    tags = {
        Name = var.instance_name
    }
}

output "ec2_public_ip"{
    description = "Public IP of the EC2 instance"
    value = aws_instance.demo_ec2.public_ip
    sensitive = false  #to hide sensitive info
}


# # Create iam user

# resource "aws_iam_user" "demo_user" {
#   name = "terraform-demo-user"

#   tags = {
#     purpose = "to create a demo user"
#   }
# }

# #Create S3 bucket
# resource "aws_s3_bucket" "terraform_bucker_s3" {
#   bucket = "my-tf-demo-bucket-20260609"

#   tags = {
#     Name        = "My-demo-bucket"
#     Environment = "Dev"
#   }
# }

# # S3 bucket Versioning
# resource "aws_s3_bucket_versioning" "s3_versioning_demo" {
#   bucket = aws_s3_bucket.terraform_bucker_s3.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }

