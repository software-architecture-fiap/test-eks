variable "region" {
  description = "The AWS region"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  default     = "test-cluster"
}

variable "authentication_mode" {
  description = "The authentication mode for the EKS cluster"
  default     = "API_AND_CONFIG_MAP"
}

variable "cidr_blocks" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"

}

variable "instance_type" {
  description = "The instance type for the EKS node group"
  default     = "t3.medium"
}

variable "policy_arn" {
  description = "The ARN of the IAM policy to associate with the EKS cluster"
  default     = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAmazonEKSClusterAdminPolicy"
}

// Its necessary to get this ARN from AWS academy account every 4 hours
variable "principal_arn" {
  description = "The ARN of the IAM principal to associate with the EKS cluster"
  default     = "arn:aws:iam::830714066230:role/voclabs"
}

variable "account_id" {
  description = "The AWS account ID"
  default     = "830714066230"
}