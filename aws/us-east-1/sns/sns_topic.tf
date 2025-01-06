resource "aws_sns_topic" "tfer--alertsintegration" {
  application_success_feedback_sample_rate = "0"
  content_based_deduplication              = "false"
  fifo_topic                               = "false"
  firehose_success_feedback_sample_rate    = "0"
  http_success_feedback_sample_rate        = "0"
  kms_master_key_id                        = "arn:aws:kms:us-east-1:650251715284:key/fa3399af-ebbf-4d26-92fd-64534014080e"
  lambda_success_feedback_sample_rate      = "0"
  name                                     = "alertsintegration"

  policy = <<POLICY
{
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Action": [
        "SNS:GetTopicAttributes",
        "SNS:SetTopicAttributes",
        "SNS:AddPermission",
        "SNS:RemovePermission",
        "SNS:DeleteTopic",
        "SNS:Subscribe",
        "SNS:ListSubscriptionsByTopic",
        "SNS:Publish"
      ],
      "Condition": {
        "StringEquals": {
          "AWS:SourceOwner": "650251715284"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:sns:us-east-1:650251715284:alertsintegration",
      "Sid": "__default_statement_ID"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  # signature_version                = "0"
  sqs_success_feedback_sample_rate = "0"

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
