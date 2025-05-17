  resource "aws_vpc" "service-dev-vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "service-dev-vpc"
    }
  }