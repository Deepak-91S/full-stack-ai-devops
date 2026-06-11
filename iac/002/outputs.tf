output "ec2_public_ip" {
    description = "Public IP of the EC2 instance"
    value = aws_instance.demo_ec2.public_ip
    sensitive = false  #to hide sensitive info
}

output "ec2_instance_id" {
    description = "Instance id of EC2"
    value = aws_instance.demo_ec2.id
}

output "s3_bucket_name" {
    description = "S3 bucket details"
    value = aws_s3_bucket.terraform_bucket_s3.bucket
}

output "iam_user" {
    description = "IAM user details"
    value = aws_iam_user.demo_user.name
}