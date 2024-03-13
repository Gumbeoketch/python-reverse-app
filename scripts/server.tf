provider "aws" {
  region = "us-east-1"
  #   access_key = ""
  #   secret_key = ""
}

resource "aws_instance" "intro" {
  ami                    = "ami-0cd59ecaf368e5ccf"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "#your_key"
  vpc_security_group_ids = ["#your_SG"]
  tags = {
    Name    = "python-app-instance"
    Project = "Take-Home"
