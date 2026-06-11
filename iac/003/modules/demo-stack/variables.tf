# Variables
variable "ec2_ami_id" {
  type = string
  description = "EC2 instance AMI"
}

variable "iam_user-name" {
  type = string
  description = "EC2 instance name"
}

variable "instance_type" {
  type = string
  description = "EC2 instance type"
}

variable "s3-bucket-id" {
  type = string
  description = "s3-bucket id"
}

variable "s3-bucket-name" {
  type = string
  description = "s3-bucket name"
}

variable "environment" {
  type = string
  description = "environment"
}

variable "s3-bucket-versioning" {
  type = bool
  description = "s3-bucket versioning"
}

variable "instance_name" {
  type = string
  description = "EC2 instance name"
}

variable "enable_monitoring" {
  type = bool
  description = "EC2 instance monitoring"
  default = false
}

variable "bucket_purpose" {
  type = string
  description = "Purpose of Bucket"
}

variable "iam_user_purpose" {
  type = string
  description = "Purpose of IAM user"
}