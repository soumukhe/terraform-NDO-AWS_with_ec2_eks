variable "awsstuff" {
  type = map(any)
  default = {
    aws_account_id         = "populate_me"
    is_aws_account_trusted = false
    aws_access_key_id      = "populate_me"
    aws_secret_key         = "populate_me"
  }
}
