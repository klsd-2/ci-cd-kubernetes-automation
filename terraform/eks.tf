resource "aws_eks_cluster" "main" {
  name     = var.cluster_name
  role_arn = "arn:aws:iam::123456789012:role/EKSClusterRole"

  vpc_config {
    subnet_ids = [
      "subnet-12345678",
      "subnet-87654321"
    ]
  }

  tags = {
    Environment = "Demo"
  }
}
