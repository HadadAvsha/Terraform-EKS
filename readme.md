<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_argocd"></a> [argocd](#requirement\_argocd) | 0.4.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.31.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.7.1 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~> 2.15.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_EKS"></a> [EKS](#module\_EKS) | ./EKS | n/a |
| <a name="module_Helm-charts"></a> [Helm-charts](#module\_Helm-charts) | ./Helm-charts | n/a |
| <a name="module_Network"></a> [Network](#module\_Network) | ./Network | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azs"></a> [azs](#input\_azs) | Availability Zones | `list(string)` | <pre>[<br>  "us-west-2a",<br>  "us-west-2b",<br>  "us-west-2c"<br>]</pre> | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | n/a | `string` | `"Avsha-EKS-cluster"` | no |
| <a name="input_node_group"></a> [node\_group](#input\_node\_group) | n/a | `string` | `"Avsha-EKS-workernodes"` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | enter the name for your cluster | `string` | `"Avsha-EKS"` | no |
| <a name="input_public_subnet_cidrs"></a> [public\_subnet\_cidrs](#input\_public\_subnet\_cidrs) | n/a | `list(string)` | <pre>[<br>  "10.0.1.0/24",<br>  "10.0.2.0/24",<br>  "10.0.3.0/24"<br>]</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->