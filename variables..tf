variable "bucket_name" {
  type        = string
  description = "Bucket name to store the build file"
}

variable "tags" {
  type        = map(string)
  description = "Tag value for identification and billing"
}

variable "profile" {
  type        = string
  description = "Authentication profile"
}

variable "region" {
  type        = string
  description = "aws region"
}