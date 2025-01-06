resource "aws_main_route_table_association" "tfer--vpc-0c87027cdcedb4a0e" {
  route_table_id = aws_route_table.tfer--rtb-081bda8551b80bef5.id
  vpc_id         = "vpc-0c87027cdcedb4a0e"
}
