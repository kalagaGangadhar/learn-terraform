# count //count is not preffered because if we add one more component infront of frontend
#it will rename all the server names and disaster situation
#variable "component" {
#  default = ["redis","frontend","mongodb","catalogue"]
#}
#
#resource "aws_instance" "instance" {
#  ami           = "ami-0f3c7d07486cad139"
#  instance_type = "t2.micro"
#  vpc_security_group_ids = [ "sg-08db871bebc41e267" ]
#  count = length(var.component)
#  tags = {
#    Name=element(var.component,count.index )
##    Name=var.component[count.index]
#  }
#}
#
#resource "aws_security_group" "all_tls" {
#  count = length(var.component)
#  tags = {
#    Name=element(var.component,count.index )
#  }
#}

#for each by map
variable "component" {
  default = {
#    frontend={name="frontend"}
    mongodb={name="mongodb"}
    catalogue={name="catalogue"}
  }
}

resource "aws_instance" "instance" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-08db871bebc41e267" ]
  for_each = var.component
  name=lookup(var.component,each.value["name"],null )
  }
