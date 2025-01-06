resource "aws_main_route_table_association" "tfer--vpc-03cb619db721c5e8e" {
  # route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-0b343dc04690f69a2_id}"
  route_table_id = aws_route_table.tfer--rtb-0b343dc04690f69a2.id
  vpc_id         = "vpc-03cb619db721c5e8e"
}
