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

## Inputs - VPC

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of resource to be created. The name will be used as the name of the resource in the AWS console. | `string` | `{}` | yes |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | CIDR Block of resource to be created. | `string` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tag names and values for tags to apply to all taggable resources created by the module. Default value is a blank map to allow for using Default Tags in the provider. | `map(string)` | `{}` | no |
| <a name="input_instance_tenancy"></a> [instance\_tenancy](#input\_instance\_tenancy) | The tenancy option for instances in the VPC can be 'default' or 'dedicated.' 'Default' uses the instance tenancy specified at EC2 instance launch, while 'dedicated' ensures instances in dedicated tenancy in the VPC, with a flat fee of $2 per hour per region, along with per-instance usage fees. | `string` | `{}` | no |
| <a name="input_ipv4_ipam_pool_id"></a> [instance\_ipv4\_ipam\_pool\_id](#input\_ipv4\_ipam\_pool\_id) | The IPAM pool ID allocates the VPC's CIDR. It automates IP address management across AWS Regions and accounts, enabling usage monitoring within your organization. | `string` | `{}` | no |
| <a name="input_ipv4_netmask_length"></a> [instance\_ipv4\_netmask\_length](#input\_ipv4\_netmask\_length) | The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a ipv4_ipam_pool_id. | `string` | `{}` | no |
| <a name="input_ipv6_cidr_block"></a> [instance\_ipv6\_cidr\_block](#input\_ipv6\_cidr\_block) | IPv6 CIDR block to request from an IPAM Pool. Can be set explicitly or derived from IPAM using ipv6_netmask_length. | `string` | `{}` | no |
| <a name="input_ipv6_netmask_length"></a> [instance\_ipv6\_netmask\_length](#input\_ipv6\_netmask\_length) | Netmask length to request from IPAM Pool. Conflicts with ipv6_cidr_block. This can be omitted if IPAM pool as a allocation_default_netmask_length set. Valid values: 56. | `string` | `{}` | no |
| <a name="input_ipv6_cidr_block_network_border_group"></a> [instance\_ipv6\_cidr\_block\_network\_border\_group](#input\_ipv6\_cidr\_block\_network\_border\_group) | An assigned IPv6 CIDR in a VPC defaults to a region's network border group. It can be modified to limit public address broadcasts to specific groups like LocalZones. | `string` | `{}` | no |
| <a name="input_enable_dns_support"></a> [instance\_enable\_dns\_support](#input\_enable\_dns\_support) | A boolean flag to enable/disable DNS support in the VPC. Defaults to true. | `string` | `{}` | no |
| <a name="input_enable_network_address_usage_metrics"></a> [instance\_enable\_network\_address\_usage\_metrics](#input\_enable\_network\_address\_usage\_metrics) | Indicates whether Network Address Usage metrics are enabled for your VPC. Defaults to false. | `string` | `{}` | no |
| <a name="input_enable_dns_hostnames"></a> [instance\_enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false. | `string` | `{}` | no |
| <a name="input_assign_generated_ipv6_cidr_block"></a> [instance\_assign\_generated\_ipv6\_cidr\_block](#input\_assign\_generated\_ipv6\_cidr\_block) | Requests an Amazon-assigned /56 prefix-length IPv6 CIDR block for the VPC. No custom range or size can be specified. Default is false and conflicts with ipv6_ipam_pool_id. | `string` | `{}` | no |

## Inputs - CIDR IPV4 Block Association

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vpc_ip"></a> [vpc\_id](#input\_vpc\_id) | The ID of the VPC to make the association with. | `string` | `{}` | yes |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using ipv4_netmask_length. | `string` | `{}` | no |
| <a name="input_ipv4_ipam_pool_id"></a> [instance\_ipv4\_ipam\_pool\_id](#input\_ipv4\_ipam\_pool\_id) | The IPAM pool ID allocates the VPC's CIDR. It automates IP address management across AWS Regions and accounts, enabling usage monitoring within your organization. | `string` | `{}` | no |
| <a name="input_ipv4_netmask_length"></a> [instance\_ipv4\_netmask\_length](#input\_ipv4\_netmask\_length) | The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a ipv4_ipam_pool_id. | `string` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc"></a> [vpc_id](#output\_vpc\_id) | The ID of the VPC. |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->