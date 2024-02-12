
data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]   //owner should who created ami
}

output "ami" {
  value = data.aws_ami.ami
}

resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = ["sg-08db871bebc41e267"]
}

variable "instance_type" {}