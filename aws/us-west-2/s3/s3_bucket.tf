resource "aws_s3_bucket" "tfer--beit-loewenstein-data-bucket" {
  bucket        = "beit-loewenstein-data-bucket"
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
        kms_master_key_id = "arn:aws:kms:us-west-2:650251715284:key/b5361b7b-ea33-4269-aac9-ebe882ac7fb7"
        sse_algorithm     = "aws:kms"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "true"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--geisinger-athena-output" {
  bucket        = "geisinger-athena-output"
  force_destroy = "false"

  grant {
    id          = "ece9b40aba7fea8afcd4d307a2911ed7c84c970d4d88a4421a49ebe5094020ee"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  lifecycle_rule {
    abort_incomplete_multipart_upload_days = "0"
    enabled                                = "true"
    id                                     = "LimitRetention"

    noncurrent_version_expiration {
      days = "3"
    }
  }

  object_lock_enabled = "false"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "arn:aws:kms:us-west-2:650251715284:key/b5361b7b-ea33-4269-aac9-ebe882ac7fb7"
        sse_algorithm     = "aws:kms"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "true"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--geisinger-data-bucket" {
  bucket        = "geisinger-data-bucket"
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

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetBucketVersioning",
        "s3:GetObjectVersionForReplication",
        "s3:GetObjectVersionAcl",
        "s3:GetObjectVersionTagging"
      ],
      "Condition": {
        "ArnLike": {
          "aws:SourceArn": "arn:aws:s3:::geisinger-data-bucket"
        },
        "StringEquals": {
          "aws:SourceAccount": "650251715284"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "s3.amazonaws.com"
      },
      "Resource": [
        "arn:aws:s3:::geisinger-data-bucket",
        "arn:aws:s3:::geisinger-data-bucket/*"
      ]
    },
    {
      "Action": [
        "s3:GetObject",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::851725650090:role/iam_fetch-data__role"
      },
      "Resource": [
        "arn:aws:s3:::geisinger-data-bucket",
        "arn:aws:s3:::geisinger-data-bucket/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  replication_configuration {
    role = "arn:aws:iam::650251715284:role/service-role/s3crr_role_for_geisinger-data-bucket"

    rules {
      destination {
        access_control_translation {
          owner = "Destination"
        }

        account_id         = "851725650090"
        bucket             = "arn:aws:s3:::opmed-integration-raw-data"
        replica_kms_key_id = "arn:aws:kms:us-east-1:851725650090:key/mrk-f7322a5f2a0d402dbf3924422fe28a9f"
      }

      id       = "ProdAccountReplication"
      priority = "0"

      source_selection_criteria {
        sse_kms_encrypted_objects {
          enabled = "true"
        }
      }

      status = "Enabled"
    }
  }

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "arn:aws:kms:us-west-2:650251715284:key/b5361b7b-ea33-4269-aac9-ebe882ac7fb7"
        sse_algorithm     = "aws:kms"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "true"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--mayo-data-bucket" {
  bucket        = "mayo-data-bucket"
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
        kms_master_key_id = "arn:aws:kms:us-west-2:650251715284:key/b5361b7b-ea33-4269-aac9-ebe882ac7fb7"
        sse_algorithm     = "aws:kms"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "true"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--meir-data-bucket" {
  bucket        = "meir-data-bucket"
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
        kms_master_key_id = "arn:aws:kms:us-west-2:650251715284:key/b5361b7b-ea33-4269-aac9-ebe882ac7fb7"
        sse_algorithm     = "aws:kms"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "true"
    mfa_delete = "false"
  }
}
