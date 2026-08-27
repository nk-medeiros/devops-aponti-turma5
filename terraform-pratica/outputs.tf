# Exibe o ID (nome) do bucket S3 criado
output "bucket_id" {
  description = "O nome do bucket S3 criado"
  value       = aws_s3_bucket.my_bucket.id
}

# Exibe o ARN (identificador único global da AWS) do bucket
output "bucket_arn" {
  description = "O ARN do bucket S3"
  value       = aws_s3_bucket.my_bucket.arn
}

# Exibe o nome de domínio do bucket S3
output "bucket_domain_name" {
  description = "O nome de domínio do bucket S3"
  value       = aws_s3_bucket.my_bucket.bucket_domain_name
}