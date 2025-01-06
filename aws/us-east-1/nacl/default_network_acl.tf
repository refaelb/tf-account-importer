resource "aws_default_network_acl" "tfer--acl-0b444c0fa14aa8498" {
  default_network_acl_id = "acl-0b444c0fa14aa8498"
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

  subnet_ids = ["subnet-0126952b4c979aae5", "subnet-0a3aaf12aa3ba06af", "subnet-0c61bd899c3ff1111", "subnet-0cbe611f7a4cb7f7a", "subnet-0d4030c89ad290a89", "subnet-0f1e5d3a86ad58def"]
}
