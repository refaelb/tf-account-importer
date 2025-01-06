resource "aws_vpn_connection" "tfer--vpn-0daab83c041b5a961" {
  customer_gateway_id      = "cgw-072ef0c310691b3d8"
  # enable_acceleration      = "false"
  local_ipv4_network_cidr  = "0.0.0.0/0"
  outside_ip_address_type  = "PublicIpv4"
  remote_ipv4_network_cidr = "0.0.0.0/0"
  static_routes_only       = "true"

  tags = {
    Name = "geisinger-vpn-02"
  }

  tags_all = {
    Name = "geisinger-vpn-02"
  }

  tunnel1_dpd_timeout_action              = "clear"
  # tunnel1_dpd_timeout_seconds             = "0"
  tunnel1_enable_tunnel_lifecycle_control = "false"
  tunnel1_ike_versions                    = ["ikev1", "ikev2"]
  tunnel1_inside_cidr                     = "169.254.144.252/30"

  tunnel1_log_options {
    cloudwatch_log_options {
      log_enabled       = "true"
      log_group_arn     = "arn:aws:logs:us-west-2:650251715284:log-group:geisinger_vpn_logging"
      log_output_format = "text"
    }
  }

  tunnel1_phase1_dh_group_numbers         = ["14", "15", "16", "17", "18", "19", "2", "20", "21", "22", "23", "24"]
  tunnel1_phase1_encryption_algorithms    = ["AES128", "AES128-GCM-16", "AES256", "AES256-GCM-16"]
  tunnel1_phase1_integrity_algorithms     = ["SHA1", "SHA2-256", "SHA2-384", "SHA2-512"]
  # tunnel1_phase1_lifetime_seconds         = "0"
  tunnel1_phase2_dh_group_numbers         = ["14", "15", "16", "17", "18", "19", "2", "20", "21", "22", "23", "24", "5"]
  tunnel1_phase2_encryption_algorithms    = ["AES128", "AES128-GCM-16", "AES256", "AES256-GCM-16"]
  tunnel1_phase2_integrity_algorithms     = ["SHA1", "SHA2-256", "SHA2-384", "SHA2-512"]
  # tunnel1_phase2_lifetime_seconds         = "0"
  tunnel1_preshared_key                   = "QK8Op0sNmarWvLL4IJGgW30obrMqnPHZ"
  tunnel1_rekey_fuzz_percentage           = "0"
  # tunnel1_rekey_margin_time_seconds       = "0"
  # tunnel1_replay_window_size              = "0"
  tunnel1_startup_action                  = "start"
  # tunnel2_dpd_timeout_seconds             = "0"
  tunnel2_enable_tunnel_lifecycle_control = "false"
  tunnel2_inside_cidr                     = "169.254.26.76/30"

  tunnel2_log_options {
    cloudwatch_log_options {
      log_enabled = "false"
    }
  }

  # tunnel2_phase1_lifetime_seconds   = "0"
  # tunnel2_phase2_lifetime_seconds   = "0"
  tunnel2_preshared_key             = "ufPOEHhQnBdyinHuSOX5FyxwjTdf5i8j"
  tunnel2_rekey_fuzz_percentage     = "0"
  # tunnel2_rekey_margin_time_seconds = "0"
  # tunnel2_replay_window_size        = "0"
  tunnel_inside_ip_version          = "ipv4"
  type                              = "ipsec.1"
  vpn_gateway_id                    = "vgw-0e7827515e78b1515"
}
