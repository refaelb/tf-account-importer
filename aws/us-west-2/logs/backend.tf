terraform {
  backend "s3" {
    bucket  = ""
    key     = "aws/us-west-2/logs"
    region  = ""
    profile = ""
  }
}
