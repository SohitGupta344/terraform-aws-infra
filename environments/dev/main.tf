module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr         = var.vpc_cidr
  vpc_name         = "sohit-vpc"
  igw_name         = "sohit-igw"
  route_table_name = "sohit-public-route-table"
}


module "subnet" {
  source = "../../modules/subnet"

  vpc_id            = module.vpc.vpc_id
  subnet_cidr       = var.subnet_cidr
  availability_zone = var.availability_zone
  subnet_name       = "sohit-public-subnet"
  route_table_id    = module.vpc.route_table_id
}


module "security_group" {
  source = "../../modules/security-group"

  vpc_id              = module.vpc.vpc_id
  security_group_name = "sohit-web-sg"
  ssh_cidr            = var.ssh_cidr
}


module "network_interface" {
  source = "../../modules/network-interface"

  subnet_id              = module.subnet.subnet_id
  private_ip             = "10.0.1.10"
  security_group_id      = module.security_group.security_group_id
  network_interface_name = "sohit-web-nic"
}


module "elastic_ip" {
  source = "../../modules/elastic-ip"

  eip_name             = "sohit-web-eip"
  network_interface_id = module.network_interface.network_interface_id
}


module "ec2" {
  source = "../../modules/ec2"

  ami                  = var.ami
  instance_type        = "t3.micro"
  key_name             = "sohit-key"
  network_interface_id = module.network_interface.network_interface_id
  instance_name        = "sohit-web-server"
}