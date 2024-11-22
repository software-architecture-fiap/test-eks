data "aws_iam_role" "eks_test_labrole" {
  name = "LabRole"
  #   arn = "arn:aws:iam::${var.account_id}:role/LabRole"
}

data "aws_vpc" "eks_vpc" {
  cidr_block = var.cidr_blocks
}

data "aws_subnets" "eks_test_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.eks_vpc.id]
  }
}

data "aws_subnet" "eks_test_subnet" {
  for_each = toset(data.aws_subnets.eks_test_subnets.ids)
  id       = each.value
}
