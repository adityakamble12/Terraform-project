# create private subnets

resource "aws_subnet" "subnet03" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-2a"

  tags = {
    Name = "Terra-priv1-Subnet"
  }
}

resource "aws_subnet" "subnet04" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-2b"

  tags = {
    Name = "Terra-priv2-Subnet"
  }
}
