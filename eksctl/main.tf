provider  "aws" {
  region     = var.region
  access_key = var.awsstuff.aws_access_key_id
  secret_key = var.awsstuff.aws_secret_key
}


#  Get VPC ID:

data "aws_vpcs" "vpc_id" {
  tags = {
    AciPolicyDnTag  =    "*-sm-terraform-*" # put in part of your ACI Tenant Name as filter here
  }
}



#  Get the full map for subnet IDs
data "aws_subnet_ids" "example" {
   vpc_id = element(tolist(data.aws_vpcs.vpc_id.ids),0)
}


data "aws_subnet" "example" {
  for_each = data.aws_subnet_ids.example.ids
  id       = each.value
}


# outputs

#show vpc_id
output "vpc_id" {
  #value = data.aws_vpcs.vpc_id.ids
  value = element(tolist(data.aws_vpcs.vpc_id.ids),0)
}

# show availability_zone
output "availability_zone" {
  value = [for s in data.aws_subnet.example : s.availability_zone]
}



# show cidrs
output "cidrs" {
  value = [for s in data.aws_subnet.example : s.cidr_block]
}



# show subnetID
output "subnetid" {
  value = [for s in data.aws_subnet.example : s.id]
}
