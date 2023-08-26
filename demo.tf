provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAXURO4PCP2JMAJI6E"
  secret_key = "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"
}


resource "aws_instance" "myec2" {
    ami = "ami-08333bccc35d71140"
    instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
  vpc      = true
}
