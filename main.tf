resource "aws_instance" "dev_vm" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  key_name      = "dev-key"
tags = {
    Name = "Developer-VM"
  }
}

