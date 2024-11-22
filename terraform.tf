terraform {

#   cloud {
#     organization = "tc_fiap"

#     workspaces {
#       name = "test-eks"
#     }
#   }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.77.0"
    }
  }

  required_version = "~> 1.2"
}