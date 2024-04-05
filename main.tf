resource "aws_eks_cluster" "eks" {
  name     = "${var.ENV}-eks-cluster"
  role_arn = aws_iam_role.eks-cluster-role.arn
  version  = "1.24"

  vpc_config {
    subnet_ids = var.PRIVATE_SUBNET_IDS
  }

