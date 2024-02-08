data "aws_ami_ids" "ami" {
  owners = ["788002743912"]
  name_regex = "centos-*"

}

output "ami" {
  value = data.aws_ami_ids.ami
}