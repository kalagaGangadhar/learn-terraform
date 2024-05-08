resource "aws_instance" "example" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  tags = {
    Name = "Helloworld"
  }
  vpc_security_group_ids = [ "sg-08db871bebc41e267" ]
}