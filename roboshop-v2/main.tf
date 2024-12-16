variable "ami" {
  default = "ami-0b4f379183e5706b9"
}

variable "instace_type" {
  default = "t2.micro"
}

variable "security_groups" {
  default = ["sg-0f881d5350b65ec8c"]
}

variable "components" {
  default = {
    frontend  = { name = "frontend-dev" }
    mongodb   = { name = "mongodb-dev" }
    catalogue = { name = "catalogue-dev" }
    redis     = { name = "redis-dev" }
    user      = { name = "user-dev" }
    cart      = { name = "cart-dev" }
    mysql     = { name = "mysql-dev" }
    shipping  = { name = "shipping-dev" }
    rabbitmq  = { name = "rabbitmq-dev" }
    payment   = { name = "payment-dev" }
    dispatch  = { name = "dispatch-dev" }
  }
}

resource "aws_instance" "instance" {
  for_each               = var.components
  ami                    = var.ami
  instance_type          = var.instace_type
  vpc_security_group_ids = var.security_groups
  tags = {
    Name = lookup(each.value, "name", null )
  }
}

# resource "aws_route53_record" "record" {
#   for_each = var.components
#   name    = "${lookup(each.value, "name", null)}.kroboshop.online"
#   type    = "A"
#   zone_id = "Z03445401G5DDDTFSFC1"
#   ttl     = 30
#   records = [aws_instance.instance]
# }

output "record" {
  value = lookup(aws_instance.instance, "frontend", null)
}