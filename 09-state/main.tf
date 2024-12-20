terraform {
  backend "s3" {
    bucket = "tf-state-db74-k"
    key = "09-state/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "test" {
  default = "Hello1"
}

output "test" {
  value = var.test
}