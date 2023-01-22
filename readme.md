![image](https://user-images.githubusercontent.com/106066816/213893887-703fa6d7-a438-49c1-9de8-da4cc22ea402.png)
![image](https://user-images.githubusercontent.com/106066816/213893871-ecf67d78-6634-42ab-aee1-3e8359ab62d5.png)
![image](https://user-images.githubusercontent.com/106066816/213890006-f895fd1e-0549-44d3-a309-d58b9eb1bb88.png)
![image](https://user-images.githubusercontent.com/106066816/213893907-613ec8ef-5e78-4af5-abb9-a55da8bd7026.png)
![image](https://user-images.githubusercontent.com/106066816/213893914-a349e449-9083-4c5f-85e1-0104daefaf68.png)
<br/>
This is a simple Kubernetes doployment of ArgoCD (using Helm) in Elastic Kubernetes Service(EKS) using Terraform<br/>
=============================================================================================
# We will use:<br/>
* 3 AZs in total, 1 for each subnet. (make sure your region correspond with said AZs).<br/>
* 3 tf modules: Network, EKS and Helm-charts.<br/>
* Uncomment __private_subnets.tf__ if you would like to use private subnet/s.<br/>
* ~~Delete/commentout Helm-charts/ebs-csi-driver if youre not intending to use PVC~~.<br/>

# Prerequisites:<br/>
* In order to Deploy this template you will need to install Terraform and make sure to have AWS CLI and your ~/.aws/credentials set or use [this](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build) guide.<br/>
* Change variables in: __variables.tf__ and __terraform.tfvars__ accordingly.<br/>
* Configure [CNI](https://aws.amazon.com/premiumsupport/knowledge-center/eks-persistent-storage/) in AWS in order to have PVCs.<br/>
* In __provider.tf__ modify backend to fit your bucket or delete the block for local backend.<br/>


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
