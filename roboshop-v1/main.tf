resource "aws_instance" "frontend" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  tags = {
    Name="frontend"
  }
  vpc_security_group_ids = ["sg-08db871bebc41e267"]
}

resource "aws_route53_record" "frontend" {
  name    = "frontend-dev.groboshop.online"
  type    = "A"
  zone_id = "Z0244944RMTKRZ3FWKZT"
  ttl = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  tags = {
    Name="mongodb"
  }
  vpc_security_group_ids = ["sg-08db871bebc41e267"]
}

resource "aws_route53_record" "mongodb" {
  name    = "mongodb-dev.groboshop.online"
  type    = "A"
  zone_id = "Z0244944RMTKRZ3FWKZT"
  ttl = "30"
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  tags = {
    Name="catalogue"
  }
  vpc_security_group_ids = ["sg-08db871bebc41e267"]
}

resource "aws_route53_record" "catalogue" {
  name    = "catalogue-dev.groboshop.online"
  type    = "A"
  zone_id = "Z0244944RMTKRZ3FWKZT"
  ttl = "30"
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "redis" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  tags = {
    Name="redis"
  }
  vpc_security_group_ids = ["sg-08db871bebc41e267"]
}

resource "aws_route53_record" "redis" {
  name    = "redis-dev.groboshop.online"
  type    = "A"
  zone_id = "Z0244944RMTKRZ3FWKZT"
  ttl = "30"
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  tags = {
    Name="user"
  }
  vpc_security_group_ids = ["sg-08db871bebc41e267"]
}

resource "aws_route53_record" "user" {
  name    = "user-dev.groboshop.online"
  type    = "A"
  zone_id = "Z0244944RMTKRZ3FWKZT"
  ttl = "30"
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "cart" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  tags = {
    Name="cart"
  }
  vpc_security_group_ids = ["sg-08db871bebc41e267"]
}

resource "aws_route53_record" "cart" {
  name    = "cart-dev.groboshop.online"
  type    = "A"
  zone_id = "Z0244944RMTKRZ3FWKZT"
  ttl = "30"
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  tags = {
    Name="mysql"
  }
  vpc_security_group_ids = ["sg-08db871bebc41e267"]
}

resource "aws_route53_record" "mysql" {
  name    = "mysql-dev.groboshop.online"
  type    = "A"
  zone_id = "Z0244944RMTKRZ3FWKZT"
  ttl = "30"
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  tags = {
    Name="shipping"
  }
  vpc_security_group_ids = ["sg-08db871bebc41e267"]
}

resource "aws_route53_record" "shipping" {
  name    = "shipping-dev.groboshop.online"
  type    = "A"
  zone_id = "Z0244944RMTKRZ3FWKZT"
  ttl = "30"
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  tags = {
    Name="rabbitmq"
  }
  vpc_security_group_ids = ["sg-08db871bebc41e267"]
}

resource "aws_route53_record" "rabbitmq" {
  name    = "rabbitmq-dev.groboshop.online"
  type    = "A"
  zone_id = "Z0244944RMTKRZ3FWKZT"
  ttl = "30"
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  tags = {
    Name="payment"
  }
  vpc_security_group_ids = ["sg-08db871bebc41e267"]
}

resource "aws_route53_record" "payment" {
  name    = "payment-dev.groboshop.online"
  type    = "A"
  zone_id = "Z0244944RMTKRZ3FWKZT"
  ttl = "30"
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "dispatch" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  tags = {
    Name="dispatch"
  }
  vpc_security_group_ids = ["sg-08db871bebc41e267"]
}

resource "aws_route53_record" "dispatch" {
  name    = "dispatch-dev.groboshop.online"
  type    = "A"
  zone_id = "Z0244944RMTKRZ3FWKZT"
  ttl = "30"
  records = [aws_instance.dispatch.private_ip]
}

