resource "aws_network_interface" "tfer--eni-01a652f4825449f27" {
  attachment {
    device_index = "0"
    instance     = "i-0bb18605651bbbf36"
  }

  # interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.47.70"
  # private_ip_list    = ["172.31.47.70"]
  # private_ips        = ["172.31.47.70"]
  # private_ips_count  = "0"
  security_groups    = ["sg-0b00e084262d64da0"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0a3aaf12aa3ba06af"
}

resource "aws_network_interface" "tfer--eni-067d3f48ca35515a0" {
  attachment {
    device_index = "0"
    instance     = "i-0f5fca9ea66ee0d1b"
  }

  # interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.34.132"
  # private_ip_list    = ["172.31.34.132"]
  # private_ips        = ["172.31.34.132"]
  # private_ips_count  = "0"
  security_groups    = ["sg-0b00e084262d64da0"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0a3aaf12aa3ba06af"
}

resource "aws_network_interface" "tfer--eni-08e2b865bb19ac9af" {
  attachment {
    device_index = "0"
    instance     = "i-058fe3840726d7b4a"
  }

  # interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.34.214"
  # private_ip_list    = ["172.31.34.214"]
  # private_ips        = ["172.31.34.214"]
  # private_ips_count  = "0"
  security_groups    = ["sg-0b00e084262d64da0"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0a3aaf12aa3ba06af"
}

resource "aws_network_interface" "tfer--eni-0e8d22c6d19042482" {
  attachment {
    device_index = "0"
    instance     = "i-05c1640d1df1444a8"
  }

  # interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.26.71"
  # private_ip_list    = ["172.31.26.71"]
  # private_ips        = ["172.31.26.71"]
  # private_ips_count  = "0"
  security_groups    = ["sg-0b00e084262d64da0"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0d4030c89ad290a89"
}

resource "aws_network_interface" "tfer--eni-0eb32bfac202fc0b0" {
  attachment {
    device_index = "0"
    instance     = "i-0e90686537224456e"
  }

  # interface_type     = "interface"
  ipv4_prefix_count  = "0"
  ipv6_address_count = "0"
  ipv6_prefix_count  = "0"
  private_ip         = "172.31.35.44"
  # private_ip_list    = ["172.31.35.44"]
  # private_ips        = ["172.31.35.44"]
  # private_ips_count  = "0"
  security_groups    = ["sg-0208cea9d73a16fac"]
  source_dest_check  = "true"
  subnet_id          = "subnet-0a3aaf12aa3ba06af"
}
