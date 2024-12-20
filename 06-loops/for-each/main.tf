variable "components" {
  default = {
    frontend = { name = "frontend-dev" }
    mongodb = { name = "mongodb-dev" }
    catalogue = { name = "catalogue-dev" }
  }
}

resource "aws_instance" "instance" {
  for_each = var.components
  ami = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f881d5350b65ec8c"]
  tags = {
    Name = lookup(each.value, "name", null)   # this can be used for multiple values
    //Name = lookup(var.components["frontend"],"name",null ) # this can be used for single value
  }
}
resource "aws_security_group" "security" {
  for_each = var.components
  name = lookup(each.value, "name", null)
}
