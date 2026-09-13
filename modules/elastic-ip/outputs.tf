output "public_ip" {
  value = aws_eip.web.public_ip
}

output "allocation_id" {
  value = aws_eip.web.id
}