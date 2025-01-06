resource "aws_cloudwatch_metric_alarm" "tfer--Alarm-003A--0020-CPUUtilization-0020-in-0020-AWS-002F-EC2" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-east-1:650251715284:alertsintegration"]
  alarm_description   = "Alarm triggered for CPUUtilization in namespace AWS/EC2. Threshold: 80 Percent."
  alarm_name          = "Alarm: CPUUtilization in AWS/EC2"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  # datapoints_to_alarm = "0"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "300"
  statistic           = "Average"

  tags = {
    Environment        = "integration"
    GithubRepo         = "GreatMix-AI/opmed-tf"
    TerraformWorkspace = "Opmed-integration"
  }

  tags_all = {
    Environment        = "integration"
    GithubRepo         = "GreatMix-AI/opmed-tf"
    TerraformWorkspace = "Opmed-integration"
  }

  threshold          = "80"
  treat_missing_data = "missing"
  unit               = "Percent"
}
