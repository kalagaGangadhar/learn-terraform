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

#map plain
variable "fruits_stock" {
  default = {
    apple=100
    banana=200
  }
}

output "fruits_stock_map" {
  value = var.fruits_stock["apple"]
}

#map of maps
variable "fruit_stock_price" {
  default = {
    apple={
      stock=100
      price=1000
    }
    banana={
      stock=50
      price=100
    }
  }
}

output "fruits_mapsofmap_first" {
  value = var.fruit_stock_price.apple["price"]
}