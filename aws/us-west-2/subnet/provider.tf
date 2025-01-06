# provider "aws" {
#   region = "us-west-2"
# }

terraform {
	required_providers {
		aws = {
	    version = "~> 4.67.0"
		}
  }
}
provider "aws" {
  region  = var.REGION
  profile = var.PROFILE
}