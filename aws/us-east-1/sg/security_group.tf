resource "aws_security_group" "tfer--data-ec2-sg_sg-0b00e084262d64da0" {
  description = "sg for data analysis EC2"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port       = "3389"
    protocol        = "tcp"
    security_groups = [aws_security_group.tfer--data-vpn-endpoint-sg_sg-0208cea9d73a16fac.id]
    self            = "false"
    to_port         = "3389"
  }

  name   = "data-ec2-sg"
  vpc_id = "vpc-0c87027cdcedb4a0e"
}

resource "aws_security_group" "tfer--data-vpn-endpoint-sg_sg-0208cea9d73a16fac" {
  description = "sg for data analysis vpn"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "1943"
    protocol    = "tcp"
    self        = "false"
    to_port     = "1943"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  name   = "data-vpn-endpoint-sg"
  vpc_id = "vpc-0c87027cdcedb4a0e"
}

resource "aws_security_group" "tfer--default_sg-047d88aadfe270975" {
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
  vpc_id = "vpc-0c87027cdcedb4a0e"
}
