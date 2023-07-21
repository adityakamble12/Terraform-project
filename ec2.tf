#public instance.

resource "aws_instance" "ec2-01" {
  ami                    = "ami-024e6efaf93d85776"
  instance_type          = "t2.medium"
  key_name               = "service-key"
  subnet_id              = aws_subnet.subnet01.id
  vpc_security_group_ids = [aws_security_group.pub-sg.id]

  tags = {
    Name = "Terra-pub-ec2"
  }
}

#private instance:

resource "aws_instance" "ec2-02" {
  ami                    = "ami-024e6efaf93d85776"
  instance_type          = "t2.medium"
  key_name               = "service-key"
  subnet_id              = aws_subnet.subnet03.id
  vpc_security_group_ids = [aws_security_group.priv-sg.id]

  tags = {
    Name = "Terra-priv-ec2"
  }
}
