variable "aws_region" {
  description = "value of AWS Region"
  default = "ap-south-1"
}
variable "ami_id" {
  description = "value of AMI"
  default = "ami-0f5ee92e2d63afc18"
}
variable "instance_type" {
  description = "value of instance type"
  default = "t3.micro"
}