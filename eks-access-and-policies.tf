resource "aws_eks_access_entry" "eks_test_access_entry" {
  cluster_name      = aws_eks_cluster.eks_test_cluster.name
  principal_arn     = var.policy_arn
  kubernetes_groups = ["tc-3"]
  type              = "STANDARD"
}

resource "aws_eks_access_policy_association" "eks_test_policy_assoc" {
  cluster_name  = aws_eks_cluster.eks_test_cluster.name
  principal_arn = var.principal_arn
  policy_arn    = var.policy_arn

  access_scope {
    type = "cluster"
  }

}