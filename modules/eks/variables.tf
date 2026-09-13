variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version for EKS"
  type        = string
  default     = "1.33"
}

variable "subnet_ids" {
  description = "Subnet IDs for EKS control plane"
  type        = list(string)
}

variable "node_subnet_ids" {
  description = "Subnet IDs for EKS worker nodes"
  type        = list(string)
}

variable "endpoint_private_access" {
  description = "Enable private EKS API endpoint"
  type        = bool
  default     = true
}

variable "endpoint_public_access" {
  description = "Enable public EKS API endpoint"
  type        = bool
  default     = true
}

variable "instance_types" {
  description = "EC2 instance types for EKS worker nodes"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "capacity_type" {
  description = "EKS node capacity type"
  type        = string
  default     = "ON_DEMAND"

  validation {
    condition = contains(
      ["ON_DEMAND", "SPOT"],
      var.capacity_type
    )

    error_message = "capacity_type must be ON_DEMAND or SPOT."
  }
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "tags" {
  description = "Tags for EKS resources"
  type        = map(string)
  default     = {}
}