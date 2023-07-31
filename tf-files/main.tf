resource "aws_instance" var.ec2_n {
  ami                    = var.ami_id
  instance_type          = var.i_t
  count                  = var.c
  key_name               = key2
  vpc_security_group_ids = var.sgid
 subnet_id = var.snid
  tags = {
    Name = var.tag
  }
}
resource "aws_security_group" var.sg-rn {
  vpc_id      = var.vpcid
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
