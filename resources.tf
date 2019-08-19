resource "aws_instance" "demo" {
  ami           = "${var.ami}"
  instance_type = "${var.instance}"

provisioner "remote-exec" {
   inline = ["sudo apt-get -qq install python -y"]
   }

connection {
    user = "${var.username}"
    }
  }
