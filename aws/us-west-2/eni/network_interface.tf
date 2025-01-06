resource "aws_network_interface" "tfer--eni-009f718b2838356bc" {
  description        = "VPC Endpoint Interface vpce-0aaa1a9d56d89b45b"
  # interface_type     = "trunk"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.41.46"
  # private_ip_list    = ["172.31.41.46"]
  # private_ips        = ["172.31.41.46"]
  # private_ips_count  = "0"
  security_groups    = ["sg-0790aa4b8715d7091"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0c3573a17eb46fbd1"
}

resource "aws_network_interface" "tfer--eni-00d71c129cb108f58" {
  description        = "AWS Lambda VPC ENI-geisinger_kit_extraction-12b67f1b-3582-4519-943a-a767bcc97b2f"
  # interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.41.66"
  # private_ip_list    = ["172.31.41.66"]
  # private_ips        = ["172.31.41.66"]
  # private_ips_count  = "0"
  security_groups    = ["sg-0790aa4b8715d7091"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0c3573a17eb46fbd1"
}

resource "aws_network_interface" "tfer--eni-040faa001520eb24f" {
  description        = "VPC Endpoint Interface vpce-0aaa1a9d56d89b45b"
  # interface_type     = "trunk"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.11.14"
  # private_ip_list    = ["172.31.11.14"]
  # private_ips        = ["172.31.11.14"]
  # private_ips_count  = "0"
  security_groups    = ["sg-0790aa4b8715d7091"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0c4802a92ffc7b7cb"
}

resource "aws_network_interface" "tfer--eni-07af9be6cb4558758" {
  description        = "AWS Lambda VPC ENI-geisinger_kit_extraction-79386c24-38ea-4245-9b42-fba1e9095eba"
  # interface_type     = "lambda"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.11.139"
  # private_ip_list    = ["172.31.11.139"]
  # private_ips        = ["172.31.11.139"]
  # private_ips_count  = "0"
  security_groups    = ["sg-0790aa4b8715d7091"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0c4802a92ffc7b7cb"
}

resource "aws_network_interface" "tfer--eni-0b9bda6782ed450ec" {
  attachment {
    device_index = "0"
    instance     = "i-04916d46c1f111bd5"
  }

  # interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.31.252"
  # private_ip_list    = ["172.31.31.252"]
  # private_ips        = ["172.31.31.252"]
  # private_ips_count  = "0"
  security_groups    = ["sg-0790aa4b8715d7091"]
  source_dest_check  = "false"
  subnet_id          = "subnet-025d62f6de9eae90f"
}

resource "aws_network_interface" "tfer--eni-0d88c78aefbe434dc" {
  attachment {
    device_index = "0"
    instance     = "i-0ae202e7ed5c6835f"
  }

  # interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.49.54"
  # private_ip_list    = ["172.31.49.54"]
  # private_ips        = ["172.31.49.54"]
  # private_ips_count  = "0"
  security_groups    = ["sg-0790aa4b8715d7091"]
  source_dest_check  = "true"
  subnet_id          = "subnet-01fcdb1b5e93d2af8"
}

resource "aws_network_interface" "tfer--eni-0deff469e84885672" {
  description        = "VPC Endpoint Interface vpce-0aaa1a9d56d89b45b"
  # interface_type     = "trunk"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.23.50"
  # private_ip_list    = ["172.31.23.50"]
  # private_ips        = ["172.31.23.50"]
  # private_ips_count  = "0"
  security_groups    = ["sg-0790aa4b8715d7091"]
  source_dest_check  = "true"
  subnet_id          = "subnet-025d62f6de9eae90f"
}

resource "aws_network_interface" "tfer--eni-0fe43782ff821ff0c" {
  description        = "VPC Endpoint Interface vpce-0aaa1a9d56d89b45b"
  # interface_type     = "trunk"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.59.82"
  # private_ip_list    = ["172.31.59.82"]
  # private_ips        = ["172.31.59.82"]
  # private_ips_count  = "0"
  security_groups    = ["sg-0790aa4b8715d7091"]
  source_dest_check  = "true"
  subnet_id          = "subnet-01fcdb1b5e93d2af8"
}

resource "aws_network_interface" "tfer--eni-0ffa203e42a6a5e00" {
  attachment {
    device_index = "0"
    instance     = "i-04b4f498cf7781b47"
  }

  # interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.50.173"
  # private_ip_list    = ["172.31.50.173"]
  # private_ips        = ["172.31.50.173"]
  # private_ips_count  = "0"
  security_groups    = ["sg-0790aa4b8715d7091"]
  source_dest_check  = "true"
  subnet_id          = "subnet-01fcdb1b5e93d2af8"
}
