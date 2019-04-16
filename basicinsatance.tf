provider "aws" {
  access_key = "xxx"
  secret_key = "xxx"
  region     = "xxx"
}
resource "aws_instance" "web" {
  ami = "ami-0889b8a448de4fc44"
  instance_type = "t2.micro"
  tags {
    Name = "HelloWorld"
  }
}
