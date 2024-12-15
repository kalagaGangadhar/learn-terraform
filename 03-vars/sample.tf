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

## Access a list variable, List index starts from zero
output "fruit_one" {
  value = var.friuts[0]
  //value = element(var.friuts, 2)
}

output "fruit_two" {
  value = var.friuts[1]
}