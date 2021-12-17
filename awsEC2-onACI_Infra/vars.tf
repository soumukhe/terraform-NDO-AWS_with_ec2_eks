# this is the file that defines the variables.  The values should be specified in terraform.tfvars

variable "instance_type" { default = "t2.micro" }


variable "awsstuff" {
  type = map(any)
  default = {
    aws_account_id         = "092454789620"
    is_aws_account_trusted = false
    aws_access_key_id      = "AKIARLBV4EH2CNBNFDEI"
    aws_secret_key         = "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"
  }
}

variable "region" {
  default = "us-east-1"
}




#variable "ami" {
#  type = map
#  default = {
#    "us-east-1" = "ami-04bf6dcdc9ab498ca"
#    "us-east-2" = "ami-0b0f4c27376f8aa79"
#    "us-west-1" = "ami-000279759c4819ddf"
#  }
#}


variable "num_inst" {
  type = number
  description = "enter the number of instances you want"
}
