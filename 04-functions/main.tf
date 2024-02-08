variable "fruits" {
  default = ["apple","orange"]
}

output "fruit" {
  value = var.fruits[0]
}