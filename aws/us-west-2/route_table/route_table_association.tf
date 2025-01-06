resource "aws_route_table_association" "tfer--subnet-01fcdb1b5e93d2af8" {
  # route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-0a3f7d2a83c05f01d_id}"
  route_table_id = aws_route_table.tfer--rtb-0a3f7d2a83c05f01d.id
  subnet_id      = "subnet-01fcdb1b5e93d2af8"
}

resource "aws_route_table_association" "tfer--subnet-025d62f6de9eae90f" {
  # route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-04b5ddb1b7ff0d3e1_id}"
  route_table_id = aws_route_table.tfer--rtb-04b5ddb1b7ff0d3e1.id

  subnet_id      = "subnet-025d62f6de9eae90f"
}

resource "aws_route_table_association" "tfer--subnet-0c3573a17eb46fbd1" {
  # route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-010f95302d4677098_id}"
  route_table_id = aws_route_table.tfer--rtb-010f95302d4677098.id

  subnet_id      = "subnet-0c3573a17eb46fbd1"
}

resource "aws_route_table_association" "tfer--subnet-0c4802a92ffc7b7cb" {
  # route_table_id = "${data.terraform_remote_state.local.outputs.aws_route_table_tfer--rtb-010f95302d4677098_id}"
  route_table_id = aws_route_table.tfer--rtb-010f95302d4677098.id

  subnet_id      = "subnet-0c4802a92ffc7b7cb"
}
