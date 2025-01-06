resource "aws_route_table" "tfer--rtb-081bda8551b80bef5" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0af48023bc6a9de0a"
  }

  vpc_id = "vpc-0c87027cdcedb4a0e"
}
