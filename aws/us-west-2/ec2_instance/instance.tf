resource "aws_instance" "tfer--i-04916d46c1f111bd5_Geisinger-0020-Kit-0020-NAT-0020-Instance" {
  ami                         = "ami-0bfddf4206f1fa7b9"
  associate_public_ip_address = "true"
  availability_zone           = "us-west-2a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  # cpu_core_count = "1"

  cpu_options {
    core_count       = "1"
    threads_per_core = "1"
  }

  # cpu_threads_per_core = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = "0"
  key_name                             = "geisinger_connection_test"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.31.31.252"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "8"
    volume_type           = "gp3"
  }

  security_groups   = ["GeisingerGroup"]
  source_dest_check = "false"
  subnet_id         = "subnet-025d62f6de9eae90f"

  tags = {
    Name = "Geisinger Kit NAT Instance"
  }

  tags_all = {
    Name = "Geisinger Kit NAT Instance"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0790aa4b8715d7091"]
}

resource "aws_instance" "tfer--i-04b4f498cf7781b47_Geisinger-0020-PROD-0020---0020-Mirth-0020-Connect-0020-for-0020-HL7v2-0020-Interfaces" {
  ami                         = "ami-0d081196e3df05f4d"
  associate_public_ip_address = "true"
  availability_zone           = "us-west-2d"

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
  instance_type                        = "t3.medium"
  ipv6_address_count                   = "0"
  key_name                             = "geisinger_connection_test"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.31.50.173"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "8"
    volume_type           = "gp3"
  }

  security_groups   = ["GeisingerGroup"]
  source_dest_check = "true"
  subnet_id         = "subnet-01fcdb1b5e93d2af8"

  tags = {
    Name = "Geisinger PROD - Mirth Connect for HL7v2 Interfaces"
  }

  tags_all = {
    Name = "Geisinger PROD - Mirth Connect for HL7v2 Interfaces"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0790aa4b8715d7091"]
}

resource "aws_instance" "tfer--i-0ae202e7ed5c6835f_Geisinger-0020-TEST-0020---0020-Mirth-0020-Connect-0020-for-0020-HL7v2-0020-Interfaces" {
  ami                         = "ami-08d8ac128e0a1b91c"
  associate_public_ip_address = "true"
  availability_zone           = "us-west-2d"

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
  instance_type                        = "t3.small"
  ipv6_address_count                   = "0"
  key_name                             = "geisinger_connection_test"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.31.49.54"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "8"
    volume_type           = "gp3"
  }

  security_groups   = ["GeisingerGroup"]
  source_dest_check = "true"
  subnet_id         = "subnet-01fcdb1b5e93d2af8"

  tags = {
    Name = "Geisinger TEST - Mirth Connect for HL7v2 Interfaces"
  }

  tags_all = {
    Name = "Geisinger TEST - Mirth Connect for HL7v2 Interfaces"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0790aa4b8715d7091"]
}
