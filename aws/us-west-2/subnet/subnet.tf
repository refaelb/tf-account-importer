# data "terraform_remote_state" "vpc" {
#   backend = "s3"

#   config = {
#     bucket = "opmed-ai-tf-integration"
#     key    = "aws/us-east-1/vpc"
#     region = "us-east-1"
#   }
# }



resource "aws_subnet" "tfer--subnet-01fcdb1b5e93d2af8" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.48.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "HL7v2 Subnet D"
  }

  tags_all = {
    Name = "HL7v2 Subnet D"
  }

  vpc_id = "vpc-03cb619db721c5e8e"
  # vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
}

resource "aws_subnet" "tfer--subnet-025d62f6de9eae90f" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.16.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "NAT Instance Subnet A"
  }

  tags_all = {
    Name = "NAT Instance Subnet A"
  }

  # vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
  vpc_id = "vpc-03cb619db721c5e8e"

}

resource "aws_subnet" "tfer--subnet-0c3573a17eb46fbd1" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.32.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "Lambda Function Subnet B"
  }

  tags_all = {
    Name = "Lambda Function Subnet B"
  }

  # vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
  vpc_id = "vpc-03cb619db721c5e8e"

}

resource "aws_subnet" "tfer--subnet-0c4802a92ffc7b7cb" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.0.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name = "Lambda Function Subset C"
  }

  tags_all = {
    Name = "Lambda Function Subset C"
  }

  # vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
  vpc_id = "vpc-03cb619db721c5e8e"

}
