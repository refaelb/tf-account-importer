resource "aws_security_group" "tfer--GeisingerGroup_sg-0790aa4b8715d7091" {
  description = "Allows necessary access for Geisinger VPN connection"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["159.240.3.240/32"]
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks = ["159.240.3.240/32"]
    from_port   = "-1"
    protocol    = "icmpv6"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks = ["159.240.3.240/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["159.240.3.240/32"]
    from_port   = "3389"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3389"
  }

  ingress {
    cidr_blocks = ["159.240.95.0/24"]
    description = "Allowing all traffic from Geisinger to try to get NAT instance working"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["159.240.95.0/24"]
    description = "Incoming SQL info"
    from_port   = "1433"
    protocol    = "tcp"
    self        = "false"
    to_port     = "1433"
  }

  ingress {
    cidr_blocks = ["159.240.95.0/24"]
    description = "Troubleshooting ping test packet filtering, allowing Geisinger NAT IPs for ICMP"
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks = ["172.31.0.0/16"]
    description = "Allowing all internal traffic within VPC should make workaround routing Lambda traffic through EC2 easier"
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["172.31.0.0/16"]
    description = "Allows usage of secrets manager within VPC through Interface Endpoint"
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["35.148.121.22/32"]
    description = "Andrew SSH access via terminal"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["50.35.59.60/32"]
    description = "Andrew access to Mirth Connect admin interface"
    from_port   = "8443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "8443"
  }

  name   = "GeisingerGroup"
  vpc_id = "vpc-03cb619db721c5e8e"
}

resource "aws_security_group" "tfer--default_sg-0e5f59c0d5783a0f4" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-03cb619db721c5e8e"
}
