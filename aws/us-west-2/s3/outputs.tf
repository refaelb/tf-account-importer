output "aws_s3_bucket_policy_tfer--geisinger-data-bucket_id" {
  value = "${aws_s3_bucket_policy.tfer--geisinger-data-bucket.id}"
}

output "aws_s3_bucket_tfer--beit-loewenstein-data-bucket_id" {
  value = "${aws_s3_bucket.tfer--beit-loewenstein-data-bucket.id}"
}

output "aws_s3_bucket_tfer--geisinger-athena-output_id" {
  value = "${aws_s3_bucket.tfer--geisinger-athena-output.id}"
}

output "aws_s3_bucket_tfer--geisinger-data-bucket_id" {
  value = "${aws_s3_bucket.tfer--geisinger-data-bucket.id}"
}

output "aws_s3_bucket_tfer--mayo-data-bucket_id" {
  value = "${aws_s3_bucket.tfer--mayo-data-bucket.id}"
}

output "aws_s3_bucket_tfer--meir-data-bucket_id" {
  value = "${aws_s3_bucket.tfer--meir-data-bucket.id}"
}
