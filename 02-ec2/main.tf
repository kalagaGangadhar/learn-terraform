resource "aws_instance" "test" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  tags = {
    Name="Hello World"
  }
}