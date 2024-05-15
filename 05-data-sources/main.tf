data "aws_ami_ids" "ami" {
  name_regex = "Centos-*"
  owners = ["788002743912"]
}

output "ami" {
  value = data.aws_ami_ids.ami
}