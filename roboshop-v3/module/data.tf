data "aws_ami" "ami" {
  owners = ["788002743912"]
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
}