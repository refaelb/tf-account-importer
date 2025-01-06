resource "aws_default_network_acl" "tfer--acl-0001089f20a6170d4" {
  default_network_acl_id = "acl-0001089f20a6170d4"
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = ["subnet-01fcdb1b5e93d2af8", "subnet-025d62f6de9eae90f", "subnet-0c3573a17eb46fbd1", "subnet-0c4802a92ffc7b7cb"]
}
