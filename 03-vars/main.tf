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
#accessing maps
output "fruits_mapsofmap_first" {
  value = var.fruit_stock_price.apple["price"]
  # value = var.fruit_stock_price["apple"].price
}

# Variable Data Types
variable "fruit_details" {
  default = {
    apple = {
      stock    = 100          # number
      type     = "washington" # string
      for_sale = true         # boolean
    }
  }
}

# Variable in a combination of any other string then it needs to be with in  ${}
output "test_name_1" {
  value = "Test Name = ${var.test}"
}


output "fruit_details_apple" {
  value = "Apple Stock = ${var.fruit_details["apple"].stock} , Apple Type = ${var.fruit_details["apple"].type}, Apple Sale Status = ${var.fruit_details["apple"].for_sale}"
}