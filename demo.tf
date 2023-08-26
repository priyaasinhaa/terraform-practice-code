provider "aws" {
  region     = "us-east-2"
}


resource "aws_instance" "myec2" {
    ami = "ami-08333bccc35d71140"
    instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
  vpc      = true
}
