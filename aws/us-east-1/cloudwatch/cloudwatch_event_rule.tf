resource "aws_cloudwatch_event_rule" "tfer--evening_rule" {
  description         = "Rule to trigger Lambda function at 6 PM"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "evening_rule"
  schedule_expression = "cron(0 19 * * ? *)"

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

resource "aws_cloudwatch_event_rule" "tfer--morning_rule" {
  description         = "Rule to trigger Lambda function at 10 AM"
  event_bus_name      = "default"
  is_enabled          = "true"
  name                = "morning_rule"
  schedule_expression = "cron(0 9 * * ? *)"

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
