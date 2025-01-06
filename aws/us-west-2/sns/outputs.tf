output "aws_sns_topic_tfer--Lambda-Error-Alerts_id" {
  value = "${aws_sns_topic.tfer--Lambda-Error-Alerts.id}"
}

output "aws_sns_topic_tfer--SFTP-Connector-Alerts_id" {
  value = "${aws_sns_topic.tfer--SFTP-Connector-Alerts.id}"
}

output "aws_sns_topic_tfer--success-alerts_id" {
  value = "${aws_sns_topic.tfer--success-alerts.id}"
}
