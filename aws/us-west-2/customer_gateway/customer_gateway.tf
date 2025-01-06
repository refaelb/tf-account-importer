resource "aws_customer_gateway" "tfer--cgw-072ef0c310691b3d8" {
  bgp_asn     = "65000"
  device_name = "PALO 440"
  ip_address  = "159.240.3.240"

  tags = {
    Name = "geisinger-gateway-02"
  }

  tags_all = {
    Name = "geisinger-gateway-02"
  }

  type = "ipsec.1"
}
