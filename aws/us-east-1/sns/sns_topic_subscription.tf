resource "aws_sns_topic_subscription" "tfer--subscription-231dd2d0-f423-4085-a5d3-34a36085f60f" {
  endpoint             = "https://api.opsgenie.com/v1/json/amazonsns?apiKey=45e1afb4-25be-49c4-89e1-53b2f87c4d1f"
  protocol             = "https"
  raw_message_delivery = "false"
  topic_arn            = aws_sns_topic.tfer--alertsintegration.id
}
