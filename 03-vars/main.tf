variable "test" {
  value="hello world"
}

output "op" {
  value = var.test
}