variable "fruits" {
  default = ["apple","orange"]
}

output "fruit" {
  value = element(var.fruits,2)
#  value = var.fruits[2] //getting error in this way
}