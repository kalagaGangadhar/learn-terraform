#provider "aws" {
#  region = "us-west-1"
#}
resource "aws_instance" "test" {
#  ami           = "ami-0f3c7d07486cad139"
  ami = "ami-02d3fd86e6a2f5122"
  instance_type = "t2.micro"
  tags = {
    Name="Hello World"
  }
  region = "us-west-1"
}