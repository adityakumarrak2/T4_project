resource "aws_instance" "my_instance" {
  ami                    = "ami-024e6efaf93d85776"
  instance_type          = "t2.micro"
  key_name               = "key2"
  vpc_security_group_ids = ["sg-0a954d1643b56f6fc"]
 subnet_id = "subnet-05edbbbdbe21f3fbe"
  tags = {
    Name = "T4_project007"
  }
}
resource "aws_security_group" "my_security_group" {
  vpc_id      = aws_vpc.AdiVPC.id
  description = "for provisioning purpose only"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
