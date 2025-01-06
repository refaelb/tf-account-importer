resource "aws_cloudwatch_event_rule" "tfer--daily_kit_pull" {
  description         = "Triggers every day at 7:30 am central time."
  event_bus_name      = "default"
  is_enabled          = "false"
  name                = "daily_kit_pull"
  schedule_expression = "cron(30 12 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--daily_kit_pull_2_v2" {
  description         = "Triggers every day at 7:46 am central time."
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "daily_kit_pull_2_v2"
  schedule_expression = "cron(46 13 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--daily_kit_pull_3_v2" {
  description         = "Triggers every day at 8:02 am central time."
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "daily_kit_pull_3_v2"
  schedule_expression = "cron(02 14 * * ? *)"
}

resource "aws_cloudwatch_event_rule" "tfer--daily_kit_pull_v2" {
  description         = "\t Triggers every day at 7:30 am central time."
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "daily_kit_pull_v2"
  schedule_expression = "cron(30 13 * * ? *)"
}
