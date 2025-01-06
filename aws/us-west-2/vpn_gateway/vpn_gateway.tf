resource "aws_vpn_gateway" "tfer--vgw-0e7827515e78b1515" {
  amazon_side_asn = "64512"

  tags = {
    Name = "geisinger-private-gateway-01"
  }

  tags_all = {
    Name = "geisinger-private-gateway-01"
  }

  vpc_id = "vpc-03cb619db721c5e8e"
}
