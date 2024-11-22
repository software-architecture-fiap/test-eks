resource "aws_eks_cluster" "eks_test_cluster" {
  name     = "EKS-${var.cluster_name}"
  role_arn = data.aws_iam_role.eks_test_labrole.arn

  vpc_config {
    subnet_ids         = [for subnet in data.aws_subnet.eks_test_subnet : subnet.id if subnet.availability_zone != "${var.region}e"]
    security_group_ids = [aws_security_group.eks_test_security_group.id]
  }

  access_config {
    authentication_mode = var.authentication_mode
  }
}
