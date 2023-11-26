provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "t-server" {
    ami = "ami-0230bd60aa48260c6"
    instance_type = "t2.micro"
    key_name = "kp1"
    security_groups = [ "t-sg" ]
}

resource "aws_security_group" "t-sg" {
  name        = "t-sg"
  description = "SSH Access"
  
  ingress {
    description      = "Shh access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "ssh-prot"

  }
}