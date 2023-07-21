# create public subnets

resource "aws_subnet" "subnet01" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  #Specify true to indicate that instances launched into the subnet should be assigned a public IP address.
  availability_zone = "us-east-2a"

  tags = {
    Name = "Terra-pub1-Subnet"
  }
}

resource "aws_subnet" "subnet02" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-2b"

  tags = {
    Name = "Terra-pub2-Subnet"
  }
}

