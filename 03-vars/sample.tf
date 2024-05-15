variable "fruit" {
  default = "apple"
}

variable "fruits_with_list" {
  default = [
  "apple",
  "banana"
  ]
}

variable "fruits_map" {
  default = {
    apple=10
    banana=20
  }
}

variable "fruits_map_maps" {
  default = {
    apple={
      stock=10
      price=100
    }
    banana={
      stock=20
      price=500
    }
  }
}

output "fruit_name" {
  value = var.fruit
}
output "fruits_list" {
  value = var.fruits_with_list[0]
}
output "fruit_map" {
  value = var.fruits_map["apple"]
}