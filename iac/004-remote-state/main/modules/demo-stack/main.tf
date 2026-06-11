
resource "aws_instance" "demo_ec2" {
    ami = var.ec2_ami_id
    instance_type = var.instance_type
    monitoring = var.enable_monitoring

    tags = {
        Name = var.instance_name
        Environment = var.environment
    }
}

# # Create iam user

resource "aws_iam_user" "demo_user" {
  name = var.iam_user-name
  tags = {
    purpose = var.iam_user_purpose
  }
}

# #Create S3 bucket
resource "aws_s3_bucket" "terraform_bucket_s3" {
  bucket = var.s3-bucket-id

  tags = {
    Name        = var.s3-bucket-name
    Environment = var.environment
    bucket_purpose = var.bucket_purpose
  }
}

# # S3 bucket Versioning
resource "aws_s3_bucket_versioning" "s3_versioning_demo" {
  count = var.s3-bucket-versioning ? 1 : 0
  bucket = aws_s3_bucket.terraform_bucket_s3.id
  versioning_configuration {
    status = "Enabled"
  }
}

