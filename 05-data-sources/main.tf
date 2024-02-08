data "aws_ami_ids" "ami" {
  owners = ["788002743912"]
  name_regex = "centos-8"
}

output "ami" {
  value = data.aws_ami_ids.ami
}