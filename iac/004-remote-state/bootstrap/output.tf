output "s3_bucket_name" {
    description = "S3 bucket details"
    value = aws_s3_bucket.terraform_state.id
}

output "s3_bucket_arn" {
    description = "S3 bucket arn"
    value = aws_s3_bucket.terraform_state.arn
}

output "tf_state_dynamodb_table" {
    description = "State table name"
    value = aws_dynamodb_table.terraform_state_locks_dynamodb.name
}

output "tf_state_dynamodb_table_arn" {
    description = "State table arn"
    value = aws_dynamodb_table.terraform_state_locks_dynamodb.arn
}