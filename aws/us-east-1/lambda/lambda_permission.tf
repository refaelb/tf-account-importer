resource "aws_lambda_permission" "tfer--terraform-20241230154626421300000001" {
  action              = "lambda:InvokeFunction"
  function_name       = "arn:aws:lambda:us-east-1:650251715284:function:ec2_stop_auto_shutdown"
  principal           = "events.amazonaws.com"
  source_arn          = "arn:aws:events:us-east-1:650251715284:rule/evening_rule"
  statement_id        = "terraform-20241230154626421300000001"
  # statement_id_prefix = "terraform-"
}

resource "aws_lambda_permission" "tfer--terraform-20241230154626473700000002" {
  action              = "lambda:InvokeFunction"
  function_name       = "arn:aws:lambda:us-east-1:650251715284:function:ec2_start_auto_shutdown"
  principal           = "events.amazonaws.com"
  source_arn          = "arn:aws:events:us-east-1:650251715284:rule/morning_rule"
  statement_id        = "terraform-20241230154626473700000002"
  # statement_id_prefix = "terraform-"
}
