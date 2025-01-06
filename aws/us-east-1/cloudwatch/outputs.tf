output "aws_cloudwatch_event_rule_tfer--evening_rule_id" {
  value = "${aws_cloudwatch_event_rule.tfer--evening_rule.id}"
}

output "aws_cloudwatch_event_rule_tfer--morning_rule_id" {
  value = "${aws_cloudwatch_event_rule.tfer--morning_rule.id}"
}

output "aws_cloudwatch_event_target_tfer--evening_rule-002F-evening_lambda_target_id" {
  value = "${aws_cloudwatch_event_target.tfer--evening_rule-002F-evening_lambda_target.id}"
}

output "aws_cloudwatch_event_target_tfer--morning_rule-002F-morning_lambda_target_id" {
  value = "${aws_cloudwatch_event_target.tfer--morning_rule-002F-morning_lambda_target.id}"
}

output "aws_cloudwatch_metric_alarm_tfer--Alarm-003A--0020-CPUUtilization-0020-in-0020-AWS-002F-EC2_id" {
  value = "${aws_cloudwatch_metric_alarm.tfer--Alarm-003A--0020-CPUUtilization-0020-in-0020-AWS-002F-EC2.id}"
}
