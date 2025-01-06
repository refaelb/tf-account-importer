output "aws_lambda_function_tfer--ec2_start_auto_shutdown_id" {
  value = "${aws_lambda_function.tfer--ec2_start_auto_shutdown.id}"
}

output "aws_lambda_function_tfer--ec2_stop_auto_shutdown_id" {
  value = "${aws_lambda_function.tfer--ec2_stop_auto_shutdown.id}"
}

output "aws_lambda_permission_tfer--terraform-20241230154626421300000001_id" {
  value = "${aws_lambda_permission.tfer--terraform-20241230154626421300000001.id}"
}

output "aws_lambda_permission_tfer--terraform-20241230154626473700000002_id" {
  value = "${aws_lambda_permission.tfer--terraform-20241230154626473700000002.id}"
}
