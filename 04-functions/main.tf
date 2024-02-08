variable "fruits" {
  default = ["apple","orange"]
}

output "fruit" {
  value = element(var.fruits,2)
#  value = var.fruits[2] //getting error in this way
}

variable "fruit_with_stock" {
  default = {
    apple={
      stock=100
    }
  }
}

output "fruit_stock" {
  value = try(var.fruit_with_stock["banana"],0)
}
output "fruit_stock_price" {
  value = lookup(var.fruit_with_stock["apple"], "price", 2)
  // try(var.fruit_with_stock["apple"].price, 2)
}