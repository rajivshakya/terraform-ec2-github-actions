provider "aws" {
  region = var.aws_region
}
resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  metadata_options {
    http_tokens = "required"
  }
  root_block_device {
    encrypted = true
  }
  tags = {
    Name = "App-Server"
  }
}