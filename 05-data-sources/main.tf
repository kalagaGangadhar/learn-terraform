data "aws_ami" "ami" {
  most_recent = true
  owners = ["788002743912"]
  name_regex = "Centos-*"

}

output "ami" {
  value = data.aws_ami.ami
}