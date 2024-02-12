provider "aws" {
  region = "us-east-1"
}
data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["788002743912"]
}

output "ami" {
  value = data.aws_ami.ami
}