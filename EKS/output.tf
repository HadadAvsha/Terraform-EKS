output "node_group" {
  value = aws_eks_node_group.worker-node-group
}

output "cluster_details" {
  value = aws_eks_cluster.eks
}