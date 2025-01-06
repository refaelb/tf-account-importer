resource "aws_instance" "tfer--i-058fe3840726d7b4a_data-analysis-instance-2" {
  ami                         = "ami-04e6d8dcead7fd52c"
  associate_public_ip_address = "false"
  availability_zone           = "us-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  # cpu_core_count = "4"

  cpu_options {
    core_count       = "4"
    threads_per_core = "2"
  }

  # cpu_threads_per_core    = "2"
  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "data-analysis-ec2-role"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "m6i.2xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "data-analysis-key-pair"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.31.34.214"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "100"
    volume_type           = "gp3"
  }

  security_groups   = ["data-ec2-sg"]
  source_dest_check = "true"
  subnet_id         = "subnet-0a3aaf12aa3ba06af"

  tags = {
    Name = "data-analysis-instance-2"
  }

  tags_all = {
    Name = "data-analysis-instance-2"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0b00e084262d64da0"]
}

resource "aws_instance" "tfer--i-05c1640d1df1444a8_data-analysis-instance-1" {
  ami                         = "ami-0324a83b82023f0b3"
  associate_public_ip_address = "true"
  availability_zone           = "us-east-1d"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  # cpu_core_count = "4"

  cpu_options {
    core_count       = "4"
    threads_per_core = "2"
  }

  # cpu_threads_per_core    = "2"
  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "data-analysis-ec2-role"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "m6i.2xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "data-analysis-key-pair"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "true"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.31.26.71"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "200"
    volume_type           = "gp3"
  }

  security_groups   = ["data-ec2-sg"]
  source_dest_check = "true"
  subnet_id         = "subnet-0d4030c89ad290a89"

  tags = {
    Name = "data-analysis-instance-1"
  }

  tags_all = {
    Name = "data-analysis-instance-1"
  }

  tenancy                = "default"
  user_data_base64       = "PHBvd2Vyc2hlbGw+CiMgSW5zdGFsbCBDaG9jb2xhdGV5ClNldC1FeGVjdXRpb25Qb2xpY3kgQnlwYXNzIC1TY29wZSBQcm9jZXNzIC1Gb3JjZQpbU3lzdGVtLk5ldC5TZXJ2aWNlUG9pbnRNYW5hZ2VyXTo6U2VjdXJpdHlQcm90b2NvbCA9IFtTeXN0ZW0uTmV0LlNlcnZpY2VQb2ludE1hbmFnZXJdOjpTZWN1cml0eVByb3RvY29sIC1ib3IgMzA3MgppZXggKChOZXctT2JqZWN0IFN5c3RlbS5OZXQuV2ViQ2xpZW50KS5Eb3dubG9hZFN0cmluZygnaHR0cHM6Ly9jaG9jb2xhdGV5Lm9yZy9pbnN0YWxsLnBzMScpKQoKIyBJbnN0YWxsIFB5dGhvbiBhbmQgRGF0YSBTY2llbmNlIHRvb2xzCmNob2NvIGluc3RhbGwgLXkgcHl0aG9uCmNob2NvIGluc3RhbGwgLXkgcHljaGFybS1wcm9mZXNzaW9uYWwKY2hvY28gaW5zdGFsbCAteSBqdXB5dGVyCmNob2NvIGluc3RhbGwgLXkgZ2l0CgojIEluc3RhbGwgUHl0aG9uIHBhY2thZ2VzCnBpcCBpbnN0YWxsIG51bXB5IHBhbmRhcyBzY2lweSBzY2lraXQtbGVhcm4gbWF0cGxvdGxpYiBzZWFib3JuIGp1cHl0ZXIgYm90bzMKPC9wb3dlcnNoZWxsPg=="
  vpc_security_group_ids = ["sg-0b00e084262d64da0"]
}

resource "aws_instance" "tfer--i-0bb18605651bbbf36_data-analysis-instance-4" {
  ami                         = "ami-04e6d8dcead7fd52c"
  associate_public_ip_address = "false"
  availability_zone           = "us-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  # cpu_core_count = "4"

  cpu_options {
    core_count       = "4"
    threads_per_core = "2"
  }

  # cpu_threads_per_core    = "2"
  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "data-analysis-ec2-role"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "m6i.2xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "data-analysis-key-pair"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.31.47.70"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "100"
    volume_type           = "gp3"
  }

  security_groups   = ["data-ec2-sg"]
  source_dest_check = "true"
  subnet_id         = "subnet-0a3aaf12aa3ba06af"

  tags = {
    Name = "data-analysis-instance-4"
  }

  tags_all = {
    Name = "data-analysis-instance-4"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0b00e084262d64da0"]
}

resource "aws_instance" "tfer--i-0e90686537224456e_opmed-openvpn" {
  ami                         = "ami-06e5a963b2dadea6f"
  associate_public_ip_address = "true"
  availability_zone           = "us-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  # cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  # cpu_threads_per_core = "2"

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.micro"
  ipv6_address_count                   = "0"
  key_name                             = "opmed-openvpn"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "true"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.31.35.44"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "8"
    volume_type           = "gp3"
  }

  security_groups   = ["data-vpn-endpoint-sg"]
  source_dest_check = "true"
  subnet_id         = "subnet-0a3aaf12aa3ba06af"

  tags = {
    Name = "opmed-openvpn"
  }

  tags_all = {
    Name = "opmed-openvpn"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0208cea9d73a16fac"]
}

resource "aws_instance" "tfer--i-0f5fca9ea66ee0d1b_data-analysis-instance-3" {
  ami                         = "ami-04e6d8dcead7fd52c"
  associate_public_ip_address = "true"
  availability_zone           = "us-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  # cpu_core_count = "4"

  cpu_options {
    core_count       = "4"
    threads_per_core = "2"
  }

  # cpu_threads_per_core    = "2"
  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "data-analysis-ec2-role"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "m6i.2xlarge"
  ipv6_address_count                   = "0"
  key_name                             = "data-analysis-key-pair"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.31.34.132"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "100"
    volume_type           = "gp3"
  }

  security_groups   = ["data-ec2-sg"]
  source_dest_check = "true"
  subnet_id         = "subnet-0a3aaf12aa3ba06af"

  tags = {
    Name = "data-analysis-instance-3"
  }

  tags_all = {
    Name = "data-analysis-instance-3"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0b00e084262d64da0"]
}
