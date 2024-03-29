variable "zone_id" {
  default = "Z0244944RMTKRZ3FWKZT"
}

variable "security_groups" {
  default = ["sg-08db871bebc41e267"]
}

variable "components" {
  default = {
    frontend={
      name          = "frontend"
      instance_type = "t2.micro"
    }
    mongodb={
      name          = "mongodb"
      instance_type = "t2.micro"
    }
    catalogue={
      name          = "catalogue"
      instance_type = "t2.micro"
    }
    redis={
      name          = "redis"
      instance_type = "t2.micro"
    }
    user={
      name          = "user"
      instance_type = "t2.micro"
    }
    cart={
      name          = "cart"
      instance_type = "t2.micro"
    }
    mysql={
      name          = "mysql"
      instance_type = "t2.micro"
    }
    shipping={
      name          = "shipping"
      instance_type = "t2.micro"
    }
    rabbitmq={
      name          = "rabbitmq"
      instance_type = "t2.micro"
    }
    payment={
      name          = "payment"
      instance_type = "t2.micro"
    }
    dispatch={
      name          = "dispatch"
      instance_type = "t2.micro"
    }
  }
}