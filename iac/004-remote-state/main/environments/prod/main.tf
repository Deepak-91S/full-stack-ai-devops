module "demo_stack" {

    source = "../../modules/demo-stack"

    ec2_ami_id = var.ec2_ami_id
    iam_user-name = var.iam_user-name
    instance_type = var.instance_type
    s3-bucket-id = var.s3-bucket-id
    s3-bucket-name = var.s3-bucket-name
    environment = var.environment
    s3-bucket-versioning = var.s3-bucket-versioning
    instance_name = var.instance_name
    enable_monitoring = var.enable_monitoring
    bucket_purpose = var.bucket_purpose
    iam_user_purpose = var.iam_user_purpose
}


output "ec2_public_ip" {
  value = module.demo_stack.ec2_public_ip
}

output "iam_user" {
  value = module.demo_stack.iam_user
}

output "iam_user_arn" {
  value = module.demo_stack.iam_user_arn
}

output "s3_bucket_name" {
  value = module.demo_stack.s3_bucket_name
}