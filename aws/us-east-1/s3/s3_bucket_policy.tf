resource "aws_s3_bucket_policy" "tfer--opmed-history-reports-integration" {
  bucket = "opmed-history-reports-integration"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::opmed-history-reports-integration/*\",\"Sid\":\"PublicReadGetObject\"}],\"Version\":\"2012-10-17\"}"
}
