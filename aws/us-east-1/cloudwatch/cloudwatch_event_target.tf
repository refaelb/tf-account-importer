resource "aws_cloudwatch_event_target" "tfer--evening_rule-002F-evening_lambda_target" {
  arn       = "arn:aws:lambda:us-east-1:650251715284:function:ec2_stop_auto_shutdown"
  rule      = "evening_rule"
  target_id = "evening_lambda_target"
}

resource "aws_cloudwatch_event_target" "tfer--morning_rule-002F-morning_lambda_target" {
  arn       = "arn:aws:lambda:us-east-1:650251715284:function:ec2_start_auto_shutdown"
  rule      = "morning_rule"
  target_id = "morning_lambda_target"
}
