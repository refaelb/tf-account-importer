resource "aws_lambda_function" "tfer--ec2_start_auto_shutdown" {
  architectures = ["arm64"]

  environment {
    variables = {
      CUSTOM_AWS_REGION = "us-east-1"
      INSTANCE_IDS      = "i-0bb18605651bbbf36"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "ec2_start_auto_shutdown"
  handler                        = "auto-shutdown-instances.start.lambda_handler"
  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::650251715284:role/iam_ec2_start_auto_shutdown__role"
  runtime                        = "python3.9"
  skip_destroy                   = "false"
  source_code_hash               = "9quSL18CvfYmMV6vxq+4g9/3Av+CxxOXq57y4iCKZzs="
  s3_bucket                      = "opmed-ai-tf-integration"
  s3_key                         = "auto-shutdown-instances/start.zip"
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

  timeout = "60"

  tracing_config {
    mode = "PassThrough"
  }
}

resource "aws_lambda_function" "tfer--ec2_stop_auto_shutdown" {
  architectures = ["arm64"]

  environment {
    variables = {
      CPU_THRESHOLD     = "10"
      CUSTOM_AWS_REGION = "us-east-1"
      INSTANCE_IDS      = "i-0bb18605651bbbf36"
    }
  }

  ephemeral_storage {
    size = "512"
  }

  function_name                  = "ec2_stop_auto_shutdown"
  handler                        = "auto-shutdown-instances.stop.lambda_handler"
  memory_size                    = "128"
  package_type                   = "Zip"
  reserved_concurrent_executions = "-1"
  role                           = "arn:aws:iam::650251715284:role/iam_ec2_stop_auto_shutdown__role"
  runtime                        = "python3.9"
  skip_destroy                   = "false"
  source_code_hash               = "IEbWx/YF/CA9D5VlYsExd8cYeIg4qpdhL/grH6bhGj8="
  s3_bucket                      = "opmed-ai-tf-integration"
  s3_key                         = "auto-shutdown-instances/start.zip"

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

  timeout = "60"

  tracing_config {
    mode = "PassThrough"
  }
}
