#!/bin/bash

# Default values
default_region="us-east-1"
default_profile="default"

# Get user input or use defaults
regions_input="${1:-$default_region}"   # First argument for regions
profile="${2:-$default_profile}"       # Second argument for profile

# Convert regions input into an array (comma-separated or space-separated values)
IFS=', ' read -r -a regions <<< "$regions_input"

# Define the list of AWS services
services=(
  accessanalyzer
  acm
  alb
  api_gateway
  appsync
  auto_scaling
  batch
  budgets
  cloud9
  cloudformation
  cloudfront
  cloudhsm
  cloudtrail
  cloudwatch
  codebuild
  codecommit
  codedeploy
  codepipeline
  cognito
  config
  customer_gateway
  datapipeline
  devicefarm
  docdb
  dynamodb
  ebs
  ec2_instance
  ecr
  ecrpublic
  ecs
  efs
  eip
  eks
  elasticache
  elastic_beanstalk
  elb
  emr
  eni
  es
  firehose
  glue
  iam
  igw
  iot
  kinesis
  kms
  lambda
  logs
  media_package
  media_store
  medialive
  mq
  msk
  nacl
  nat
  opsworks
  organization
  qldb
  rds
  redshift
  resourcegroups
  route53
  route_table
  s3
  secretsmanager
  securityhub
  servicecatalog
  ses
  sfn
  sg
  sns
  sqs
  ssm
  subnet
  swf
  transit_gateway
  vpc
  vpc_endpoint
  vpc_peering
  vpn_connection
  vpn_gateway
  waf
  waf_regional
  wafv2_cloudfront
  wafv2_regional
  workspaces
  xray
)

# Iterate through each region and service
for region in "${regions[@]}"; do
  echo "Processing region: $region with profile: $profile"
  for service in "${services[@]}"; do
    echo "Importing resources for service: $service in region: $region"
    
    # Execute the Terraformer import command and capture output
    output=$(terraformer import aws --resources="${service}" --regions="${region}" --profile="${profile}" \
      --path-pattern="aws/${region}/${service}" 2>&1)
    
    # Check for success or failure
    if [ $? -eq 0 ]; then
      echo "Successfully ran import for $service in region $region"
      
      # Check if resources are 0
      if echo "$output" | grep -q "Number of resources for service ${service}: 0"; then
        echo "No resources found for $service in region $region. Removing folder."
        rm -rf "aws/${region}/${service}"
      else
        echo "Resources found for $service in region $region."
      fi
    else
      echo "Failed to import $service for region $region" >&2
    fi
  done
done
