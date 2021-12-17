#  use this override.tf to put in confidential data

variable "awsstuff" {
  type = object({
    aws_account_id    = string
    aws_access_key_id = string
    aws_secret_key    = string
  })
  default = {
    aws_account_id    = "populate_me"
    aws_access_key_id = "populate_me"
    aws_secret_key    = "populate_me"
  }
}




variable "creds" {
  type = map(any)
  default = {
    username = "populate_me"
    password = "populate_me"
    url      = "https://ip_of_nd/"
    domain   = "put_in_auth_domain_defined_in_ND"
  }
}
