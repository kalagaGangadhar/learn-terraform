data "aws_ami" "ami" {
  owners = ["788002743912"]
  name_regex = "centos-*"
  most_recent = "true"
}

output "ami" {
  value = data.aws_ami.ami
}