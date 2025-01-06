resource "aws_cloudwatch_metric_alarm" "tfer--Lambda-Any-Errors" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-west-2:650251715284:Lambda-Error-Alerts"]
  alarm_description   = "There was an error in the geisinger_kit_extraction_v2 lambda function."
  alarm_name          = "Lambda-Any-Errors"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "1"

  dimensions = {
    FunctionName = "geisinger_kit_extraction_v2"
  }

  evaluation_periods = "1"
  metric_name        = "Errors"
  namespace          = "AWS/Lambda"
  period             = "300"
  statistic          = "Sum"
  threshold          = "0"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--fhir_auth_token_management_error" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-west-2:650251715284:Lambda-Error-Alerts"]
  alarm_description   = "# Error in FHIR Auth Token Management Lambda\nCheck logs for additional error information. An error in the auth token management likely means that there is not currently a valid token and any FHIR requests will fail due to lack of authentication."
  alarm_name          = "fhir_auth_token_management_error"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "1"

  dimensions = {
    FunctionName = "fhir_auth_token_management"
  }

  evaluation_periods = "1"
  metric_name        = "Errors"
  namespace          = "AWS/Lambda"
  period             = "300"
  statistic          = "Sum"
  threshold          = "0"
  treat_missing_data = "notBreaching"
}

resource "aws_cloudwatch_metric_alarm" "tfer--sftp-connector-error-geisinger-prd" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-west-2:650251715284:SFTP-Connector-Alerts"]
  alarm_description   = "# SFTP Connector Error in Geisinger PRD\nSFTP file transfer failed. Check logs for SFTP connector c-4f81ff69cabe40569 and troubleshoot the file transfer."
  alarm_name          = "sftp-connector-error-geisinger-prd"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "1"
  evaluation_periods  = "1"
  metric_name         = "sftp-failures-geisinger-prd"
  namespace           = "sftp-connectors"
  period              = "900"
  statistic           = "Sum"
  threshold           = "0"
  treat_missing_data  = "notBreaching"
}

resource "aws_cloudwatch_metric_alarm" "tfer--sftp-successful-geisinger-prd" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:lambda:us-west-2:650251715284:function:sftp_file_rename", "arn:aws:sns:us-west-2:650251715284:success-alerts"]
  alarm_description   = "SFTP file transfer from Geisinger PRD MFT was successful."
  alarm_name          = "sftp-successful-geisinger-prd"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "1"
  evaluation_periods  = "1"
  metric_name         = "sftp-successes-geisinger-prd"
  namespace           = "sftp-connectors"
  period              = "300"
  statistic           = "Sum"
  threshold           = "0"
  treat_missing_data  = "notBreaching"
}

resource "aws_cloudwatch_metric_alarm" "tfer--sftp_start_inbound_file_transfer_error" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:sns:us-west-2:650251715284:Lambda-Error-Alerts"]
  alarm_description   = "# Error with Lambda Function Initiating SFTP Inbound File Transfer\nCheck the lambda function logs for sftp_start_inbound_file_transfer to troubleshoot."
  alarm_name          = "sftp_start_inbound_file_transfer_error"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "1"

  dimensions = {
    FunctionName = "sftp_start_inbound_file_transfer"
  }

  evaluation_periods = "1"
  metric_name        = "sftp_start_inbound_file_transfer_error"
  namespace          = "AWS/Lambda"
  period             = "900"
  statistic          = "Sum"
  threshold          = "0"
  treat_missing_data = "notBreaching"
}
