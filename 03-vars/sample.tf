#plain variable
variable "fruit_name" {
  default = "apple"
}

output "fruit_name" {
  value = var.fruit_name
}

#List variable
variable "friuts" {
  default = [
    "apple",
    "orange"
  ]
  // default = [ "apple", "banana" ] // Single line syntax
}

# Map Variable , Plain
variable "fruit_stock" {
  default = {
    apple=100
    orange=200
  }
}

# Map Variable, Map of Maps
variable "fruit_stock_with_price" {
  default = {
    apple = {
      stock = 100
      price= 3
    }
    banana = {
      stock = 200
      price = 5
    }
  }
}

## Access a list variable, List index starts from zero
output "fruit_one" {
  value = var.friuts[0]
  //value = element(var.friuts, 2)
}

output "fruit_two" {
  value = var.friuts[1]
}

#access map variable
output "fruit_stock_apple" {
  value = var.fruit_stock["apple"]
}

output "fruit_stock_with_price_of_apple" {
  value = var.fruit_stock_with_price["apple"].stock
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

output "fruit_name_1" {
  value = "Fruit name is ${var.fruit_name}"
}

output "fruit_details_apple" {
  value = "Apple stock = ${var.fruit_details["apple"].stock} , apple type = ${var.fruit_details["apple"].type} , apple sale status = ${var.fruit_details["apple"].for_sale}"
}
