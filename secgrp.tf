provider "aws" {
  region     = "us-west-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

resource "aws_instance" "web" {
  ami           = "ami-005e54dee72cc1d00" # us-west-2
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.web.id
    device_index         = 0
  }
  tags = {
    Name = "HelloWorld"
  }
}

