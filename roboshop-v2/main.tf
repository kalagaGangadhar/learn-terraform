variable "ami" {
  default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "security_groups" {
  default = ["sg-08db871bebc41e267"]
}

variable "zone_id" {
  default = "Z0244944RMTKRZ3FWKZT"
}

variable "components" {
  default = {
    frontend  = { name="frontend-dev"}
    mongodb   = { name="mongodb-dev"}
    catalogue = { name="catalogue-dev"}
    redis     = { name="redis-dev"}
    user      = { name="user-dev"}
    cart      = { name="cart-dev"}
    mysql     = { name="mysql-dev"}
    shipping  = { name="shipping-dev"}
    rabbitmq  = { name="rabbitmq-dev"}
    payment   = { name="payment-dev"}
    dispatch  = { name="dispatch-dev"}
  }
}


resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name= lookup(each.value,"name",null )
  }
  vpc_security_group_ids = var.security_groups
}

resource "aws_route53_record" "record" {
  for_each = var.components
  name     = "${lookup(each.value,"name",null )}.groboshop.online"
  type     = "A"
  zone_id  = var.zone_id
  ttl      = "30"
  records  = [lookup(lookup(aws_instance.instance, each.key, null), "private_ip", null)]
}