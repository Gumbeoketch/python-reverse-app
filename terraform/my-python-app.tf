resource "aws_key_pair" "take_home" {
  key_name   = "takehome"
  public_key = file("take-home.pub")

}
resource "aws_instance" "python-app-instance" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "takehome"
  vpc_security_group_ids = ["sg-0eb60e2c0d9692994"]
  tags = {
    Name    = "Pthon-app-instance"
    Project = "Take-Home-Test"
  }

  provisioner "file" {
    source      = "run.sh"
    destination = "/tmp/run.sh"

  }

  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/run.sh",
      "sudo /tmp/run.sh"
    ]

  }


  connection {
    user        = var.USER
    private_key = file("take-home")
    host        = self.public_ip
  }

}
