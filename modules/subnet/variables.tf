variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for first subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone for first subnet"
  type        = string
}

variable "subnet_name" {
  description = "Name of first subnet"
  type        = string
}

variable "subnet_cidr_2" {
  description = "CIDR block for second subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone_2" {
  description = "Availability Zone for second subnet"
  type        = string
  default     = "us-east-1b"
}

variable "subnet_name_2" {
  description = "Name of second subnet"
  type        = string
  default     = "sohit-public-subnet-2"
}

variable "route_table_id" {
  description = "Route table ID"
  type        = string
}