provider "aws" {
  region = var.aws_region
}
resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  root_block_device {
    encrypted = true
  }
  tags = {
    Name = "App-Server"
  }
}