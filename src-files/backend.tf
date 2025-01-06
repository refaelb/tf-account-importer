terraform {
  backend "s3" {
    bucket  = ""
    key     = "aws/${REGION}/${folder_name}"
    region  = ""
    profile = ""
  }
}
