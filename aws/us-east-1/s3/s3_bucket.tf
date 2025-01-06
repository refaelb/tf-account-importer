resource "aws_s3_bucket" "tfer--opmed-ai-tf-integration" {
  bucket        = "opmed-ai-tf-integration"
  force_destroy = "false"

  grant {
    id          = "ece9b40aba7fea8afcd4d307a2911ed7c84c970d4d88a4421a49ebe5094020ee"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  tags = {
    terraform_workspace = "workspace_integration"
  }

  tags_all = {
    terraform_workspace = "workspace_integration"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--opmed-history-reports-integration" {
  bucket = "opmed-history-reports-integration"

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["DELETE", "GET", "POST", "PUT"]
    allowed_origins = ["*"]
    expose_headers  = ["ETAG"]
    max_age_seconds = "3000"
  }

  force_destroy = "false"

  grant {
    id          = "ece9b40aba7fea8afcd4d307a2911ed7c84c970d4d88a4421a49ebe5094020ee"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  lifecycle_rule {
    abort_incomplete_multipart_upload_days = "0"
    enabled                                = "true"

    expiration {
      days                         = "90"
      expired_object_delete_marker = "false"
    }

    id = "bucket-expiration"
  }

  lifecycle_rule {
    abort_incomplete_multipart_upload_days = "0"
    enabled                                = "true"
    id                                     = "bucket-versioning"

    noncurrent_version_expiration {
      days = "14"
    }
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Resource": "arn:aws:s3:::opmed-history-reports-integration/*",
      "Sid": "PublicReadGetObject"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

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

  versioning {
    enabled    = "true"
    mfa_delete = "false"
  }
}
