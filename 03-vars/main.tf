variable "test" {
  default="hello world"
}

output "op" {
  value = var.test
}