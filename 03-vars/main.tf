#plain varible
variable "test" {
  default="hello world"
}

output "op" {
  value = var.test
}

#list of variables
variable "fruits" {
  default = [
    "apple",
    "banana"
  ]
#  default = ["apple","orange"]  //single line syntax
}

output "fruit_list" {
  value = var.fruits[0]
  // value = element(var.fruits, 0)
}

#map
variable "fruits_stock" {
  default = {
    name="apple"
    stocke=100
  }
}

output "fruits_stock_map" {
  value = var.fruits_stock[0]
}
