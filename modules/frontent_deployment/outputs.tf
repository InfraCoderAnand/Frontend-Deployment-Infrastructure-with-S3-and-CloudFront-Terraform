output "domain_name" {
  value = aws_cloudfront_distribution.s3_distribution.id
}