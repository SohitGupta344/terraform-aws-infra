output "subnet_id" {
  description = "ID of first subnet"
  value       = aws_subnet.public.id
}

output "subnet_2_id" {
  description = "ID of second subnet"
  value       = aws_subnet.public_2.id
}

output "subnet_ids" {
  description = "IDs of all subnets"
  value = [
    aws_subnet.public.id,
    aws_subnet.public_2.id
  ]
}