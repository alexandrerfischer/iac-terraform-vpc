# AWS VPC

Creates AWS VPC for a single resource.

These resources can include:

- VPC Resource

- CIDR IPV4 Block Association

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

Auto-generated technical documentation is created using [`Terraform-Docs-AWS`](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
## Examples

```hcl
# See examples under the top level examples directory for more information on how to use this module.
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.0.0 |

## Modules

```hcl
# Modules created for this repository are available in the modules directory.
```

## Resources

| Name | Type |
|------|------|
| [aws_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_vpc_ipv4_cidr_block_association](https://registry.terraform.io/providers/hashicorp/aws/5.23.1/docs/resources/vpc_ipv4_cidr_block_association) | resource |

## Required Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name_cidr_block"></a> [name\_cidr\_block](#input\_name\_cidr\_block) | Name and CIDR Block of resource to be created. The name will be used as the name of the resource in the AWS console. | `string` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tag names and values for tags to apply to all taggable resources created by the module. Default value is a blank map to allow for using Default Tags in the provider. | `map(string)` | `{}` | no |
| <a name="input_vpc_ip"></a> [vpc\_id](#input\_vpc\_id) | The ID of the VPC to make the association with. | `string` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc"></a> [vpc_id](#output\_vpc\_id) | The ID of the VPC. |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->