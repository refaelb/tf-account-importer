resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-ec2_start_auto_shutdown" {
  name = "/aws/lambda/ec2_start_auto_shutdown"
}

resource "aws_cloudwatch_log_group" "tfer---002F-aws-002F-lambda-002F-ec2_stop_auto_shutdown" {
  name = "/aws/lambda/ec2_stop_auto_shutdown"
}
