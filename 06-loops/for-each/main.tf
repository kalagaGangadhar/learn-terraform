#for each by map
#variable "components" {
#  default = {
#    #    frontend={name="frontend"}
#    mongodb={ name="mongodb-dev" }
#    catalogue={ name="catalogue-dev" }
#  }
#}
#
#resource "aws_instance" "instance" {
#  ami                    = "ami-0f3c7d07486cad139"
#  instance_type          = "t2.micro"
#  vpc_security_group_ids = ["sg-08db871bebc41e267"]
#  for_each               = var.components
#  tags                   = {
#    Name = lookup(var.components, each.value["name"], null)
#  }
#}
#resource "aws_security_group" "allow_tls" {
#  for_each = var.components
#  name     = lookup(var.components, each.value["name"], null)
#}
variable "components" {
  default = {
    frontend  = { name = "frontend_sg" }
    catalogue = { name = "catalogue_sg" }
    mongodb   = { name = "mongodb_sg" }
  }
}


resource "aws_security_group" "allow_tls" {
  for_each = var.components
  name     = lookup(var.components, each.value["name"], null)
}