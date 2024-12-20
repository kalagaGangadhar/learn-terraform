
data "aws_instance" "instance" {
  instance_id = "i-0bc7a8432f3cc6d3d"
}

output "instance_details" {
  value = data.aws_instance.instance.private_ip
}

data "aws_ami_ids" "ami" {
  name_regex = "Centos-*"
  owners     = ["973714476881"]
}

output "ami" {
  value = data.aws_ami_ids.ami
}