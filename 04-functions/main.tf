variable "fruits" {
  default = ["apple","banana"]
}

output "fruit" {
  //value = var.fruits[2]
  value = element(var.fruits, 2)
}

variable "fruit_with_stock" {
  default = {
    apple = {
      stock = 100
    }
  }
}

output "fruit_stock" {
  //value = var.fruit_with_stock["banana"].stock
  value = try(var.fruit_with_stock["banana"].stock, 0) //try function: it checks for banana,if its not there, output is 0
}

output "fruit_stock_price" {
  value = try(var.fruit_with_stock["apple"].stock,10)
}