output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id" {
  value = module.subnet.subnet_id
}

output "security_group_id" {
  value = module.security_group.security_group_id
}

output "network_interface_id" {
  value = module.network_interface.network_interface_id
}

output "public_ip" {
  value = module.elastic_ip.public_ip
}

output "instance_id" {
  value = module.ec2.instance_id
}