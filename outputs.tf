output "bucket_name" {
  value = aws_s3_bucket.meu_bucket.bucket
}

output "dynamodb_table" {
  value = aws_dynamodb_table.minha_tabela.name
}

output "ec2_instance_id" {
  value = aws_instance.minha_ec2.id
}
