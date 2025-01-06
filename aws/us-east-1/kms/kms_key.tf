resource "aws_kms_key" "tfer--fa3399af-ebbf-4d26-92fd-64534014080e" {
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  description              = "KMS key for SNS topic encryption"
  enable_key_rotation      = "false"
  is_enabled               = "true"
  key_usage                = "ENCRYPT_DECRYPT"
  multi_region             = "false"
  policy                   = "{\"Id\":\"key-default-1\",\"Statement\":[{\"Action\":\"kms:*\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::650251715284:root\"},\"Resource\":\"*\",\"Sid\":\"Enable IAM User Permissions\"}],\"Version\":\"2012-10-17\"}"

  tags = {
    Environment        = "integration"
    GithubRepo         = "GreatMix-AI/opmed-tf"
    TerraformWorkspace = "Opmed-integration"
  }

  tags_all = {
    Environment        = "integration"
    GithubRepo         = "GreatMix-AI/opmed-tf"
    TerraformWorkspace = "Opmed-integration"
  }
}
