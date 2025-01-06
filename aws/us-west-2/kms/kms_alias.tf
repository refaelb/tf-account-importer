resource "aws_kms_alias" "tfer--alias-002F-geisinger_s3_data_key" {
  name          = "alias/geisinger_s3_data_key"
  target_key_id = "b5361b7b-ea33-4269-aac9-ebe882ac7fb7"
}
