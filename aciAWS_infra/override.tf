#  use this override.tf to put in confidential data


#  Populate values based on your AWS values
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



#  Populate values based on your ND cofigiration
variable "creds" {
  type = map(any)
  default = {
    username = "populate_me"
    password = "populate_me"
    url      = "https://ip_of_nd/"
    domain   = "put_in_auth_domain_defined_in_ND" # if you are using local user, comment this out.  
                                                  # Make sure to also comment out in variables.tf file.
  }
}
