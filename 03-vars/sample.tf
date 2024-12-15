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
}

output "fruits" {
  value = var.friuts[2]
  //value = element(var.friuts, 0)
}