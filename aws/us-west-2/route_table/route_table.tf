resource "aws_route_table" "tfer--rtb-010f95302d4677098" {
  route {
    cidr_block           = "0.0.0.0/0"
    instance_id          = "i-04916d46c1f111bd5"
    network_interface_id = "eni-0b9bda6782ed450ec"
  }

  route {
    cidr_block           = "159.240.95.0/24"
    instance_id          = "i-04916d46c1f111bd5"
    network_interface_id = "eni-0b9bda6782ed450ec"
  }

  tags = {
    Name = "lambda-function-route-table"
  }

  tags_all = {
    Name = "lambda-function-route-table"
  }

  vpc_id = "vpc-03cb619db721c5e8e"
}

resource "aws_route_table" "tfer--rtb-04b5ddb1b7ff0d3e1" {
  propagating_vgws = ["vgw-0e7827515e78b1515"]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0c3fe1b9b48103396"
  }

  route {
    cidr_block = "159.240.95.0/24"
    gateway_id = "vgw-0e7827515e78b1515"
  }

  route {
    cidr_block = "96.42.57.48/32"
    gateway_id = "igw-0c3fe1b9b48103396"
  }

  tags = {
    Name = "nat-instance-route-table"
  }

  tags_all = {
    Name = "nat-instance-route-table"
  }

  vpc_id = "vpc-03cb619db721c5e8e"
}

resource "aws_route_table" "tfer--rtb-0a3f7d2a83c05f01d" {
  propagating_vgws = ["vgw-0e7827515e78b1515"]

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0c3fe1b9b48103396"
  }

  route {
    cidr_block = "159.240.95.0/24"
    gateway_id = "vgw-0e7827515e78b1515"
  }

  route {
    cidr_block = "172.56.108.80/32"
    gateway_id = "igw-0c3fe1b9b48103396"
  }

  tags = {
    Name = "geisinger-mirth-connect-route-table"
  }

  tags_all = {
    Name = "geisinger-mirth-connect-route-table"
  }

  vpc_id = "vpc-03cb619db721c5e8e"
}

resource "aws_route_table" "tfer--rtb-0b343dc04690f69a2" {
  propagating_vgws = ["vgw-0e7827515e78b1515"]

  route {
    cidr_block = "159.240.95.0/24"
    gateway_id = "vgw-0e7827515e78b1515"
  }

  route {
    cidr_block = "96.42.57.48/32"
    gateway_id = "igw-0c3fe1b9b48103396"
  }

  tags = {
    Name = "default-route-table"
  }

  tags_all = {
    Name = "default-route-table"
  }

  vpc_id = "vpc-03cb619db721c5e8e"
}
