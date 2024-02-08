#for each by map
variable "components" {
  default = {
    #    frontend={name="frontend"}
    mongodb={ name="mongodb-dev" }
    catalogue={ name="catalogue-dev" }
  }
}

resource "aws_instance" "instance" {
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-08db871bebc41e267"]
  for_each               = var.components
  tags                   = {
    Name = lookup(each.value,"name", null)
  }
}
resource "aws_security_group" "allow_tls" {
  for_each = var.components
  tags                   = {
    Name = lookup(each.value,"name", null)
  }
}
