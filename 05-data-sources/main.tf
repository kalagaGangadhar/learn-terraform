data "aws_ami_ids" "ami" {
  owners = ["973714476881"]
  name_regex = "centos-*"

}

output "ami" {
  value = data.aws_ami_ids.ami
}