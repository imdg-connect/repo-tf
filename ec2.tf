# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo_t_server" {
  ami           = "ami-0230bd60aa48260c6" # us-west-2
  instance_type = "t2.micro"
  key_name = "kp1"
}