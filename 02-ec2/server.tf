resource "aws_instance" "test" {
  ami           = "ami-05a5bb48beb785bf1"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}