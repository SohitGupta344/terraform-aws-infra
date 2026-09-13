resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  primary_network_interface {
    network_interface_id = var.network_interface_id
  }

  tags = {
    Name = var.instance_name
  }
}