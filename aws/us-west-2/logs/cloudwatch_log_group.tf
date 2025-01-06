resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-fhir_auth_token_management" {
  name              = "/aws/lambda/fhir_auth_token_management"
  retention_in_days = "7"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-geisinger_fhir_pull" {
  name              = "/aws/lambda/geisinger_fhir_pull"
  retention_in_days = "7"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-geisinger_kit_extraction" {
  name              = "/aws/lambda/geisinger_kit_extraction"
  retention_in_days = "7"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-sftp_file_rename" {
  name = "/aws/lambda/sftp_file_rename"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-sftp_start_inbound_file_transfer" {
  name              = "/aws/lambda/sftp_start_inbound_file_transfer"
  retention_in_days = "7"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-transfer-002F-c-4f81ff69cabe40569" {
  name              = "/aws/transfer/c-4f81ff69cabe40569"
  retention_in_days = "7"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-glue-002F-crawlers" {
  name = "/aws-glue/crawlers"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-glue-002F-jobs-002F-logs-v2" {
  name = "/aws-glue/jobs/logs-v2"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-glue-002F-sessions-002F-error" {
  name = "/aws-glue/sessions/error"
}

resource "aws_cloudwatch_log_group" "tfer--geisinger_vpn_logging" {
  name              = "geisinger_vpn_logging"
  retention_in_days = "1"
}

resource "aws_cloudwatch_log_group" "tfer--vpc_flow_logs" {
  name              = "vpc_flow_logs"
  retention_in_days = "1"
}
