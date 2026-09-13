resource "aws_eip" "web" {
  domain = "vpc"

  tags = {
    Name = var.eip_name
  }
}

resource "aws_eip_association" "web" {
  allocation_id        = aws_eip.web.id
  network_interface_id = var.network_interface_id
}