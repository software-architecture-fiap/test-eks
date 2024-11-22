resource "aws_eks_node_group" "eks_test_node_group" {
  cluster_name    = aws_eks_cluster.eks_test_cluster.name
  node_group_name = "NG-${var.cluster_name}"
  node_role_arn   = data.aws_iam_role.eks_test_labrole.arn
  subnet_ids      = [for subnet in data.aws_subnet.eks_test_subnet : subnet.id if subnet.availability_zone != "${var.region}e"]
  instance_types  = [var.instance_type]
  disk_size       = 30

  scaling_config {
    min_size     = 2
    desired_size = 2
    max_size     = 4
  }

  update_config {
    max_unavailable = 1
  }

}
