
variable "componrnts" {
  default = ["frontend", "mongodb"]
}

resource "aws_instance" "instance" {
  count = length(var.componrnts)
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f881d5350b65ec8c"]
  tags = {
    Name = element(var.componrnts,count.index )
  }
}