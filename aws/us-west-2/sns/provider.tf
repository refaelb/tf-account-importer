provider "aws" {
  region  = var.REGION
  profile = var.PROFILE
}

terraform {
	required_providers {
		aws = {
	    version = "~> 4.67.0"
		}
  }
}
