variable "awsstuff" {
  type = map(any)
  default = {
    aws_account_id         = "value"
    is_aws_account_trusted = false
    aws_access_key_id      = "value"
    aws_secret_key         = "value"
  }
}

variable "region" {
  default = "us-east-1"
}
