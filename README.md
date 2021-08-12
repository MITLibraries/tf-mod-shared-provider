# Shared module for collecting remote state outputs

This module provides a layer of abstraction to accessing shared resources. It does not itself create any resources or maintain any state, it simply reads the state files of various shared resources. The goal is to hide some of the uglier, repetitive config blocks behind a clean interface.

When you add a new shared resource, you will also need to update this module with whatever outputs you want to provide access to.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [terraform_remote_state.bastion](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |
| [terraform_remote_state.deploy](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |
| [terraform_remote_state.es](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |
| [terraform_remote_state.global](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |
| [terraform_remote_state.network](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_workspace"></a> [workspace](#input\_workspace) | TF workspace | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_SES_bucket_admin_arn"></a> [SES\_bucket\_admin\_arn](#output\_SES\_bucket\_admin\_arn) | SES bucket policy which allows full admin |
| <a name="output_SES_bucket_arn"></a> [SES\_bucket\_arn](#output\_SES\_bucket\_arn) | SES bucket ARN |
| <a name="output_SES_bucket_name"></a> [SES\_bucket\_name](#output\_SES\_bucket\_name) | SES bucket name |
| <a name="output_SES_bucket_ro_arn"></a> [SES\_bucket\_ro\_arn](#output\_SES\_bucket\_ro\_arn) | SES bucket policy which allows Read Only access |
| <a name="output_SES_bucket_rw_arn"></a> [SES\_bucket\_rw\_arn](#output\_SES\_bucket\_rw\_arn) | SES bucket policy which allows Read Only access |
| <a name="output_SES_policy_noreply_libraries_arn"></a> [SES\_policy\_noreply\_libraries\_arn](#output\_SES\_policy\_noreply\_libraries\_arn) | SES policy which allows sending as noreply@libraries.mit.edu |
| <a name="output_SES_policy_noreply_stage_mitlib_arn"></a> [SES\_policy\_noreply\_stage\_mitlib\_arn](#output\_SES\_policy\_noreply\_stage\_mitlib\_arn) | SES policy which allows sending as noreply-stage@mitlib.net |
| <a name="output_alb_public_all_ingress_sgid"></a> [alb\_public\_all\_ingress\_sgid](#output\_alb\_public\_all\_ingress\_sgid) | Public ALB security group ID allowing all ingress traffic from ALB |
| <a name="output_alb_public_arn"></a> [alb\_public\_arn](#output\_alb\_public\_arn) | Public ALB arn |
| <a name="output_alb_public_arn_suffix"></a> [alb\_public\_arn\_suffix](#output\_alb\_public\_arn\_suffix) | The ARN suffix of the ALB |
| <a name="output_alb_public_default_target_group_arn"></a> [alb\_public\_default\_target\_group\_arn](#output\_alb\_public\_default\_target\_group\_arn) | Public ALB default target group arn |
| <a name="output_alb_public_dnsname"></a> [alb\_public\_dnsname](#output\_alb\_public\_dnsname) | DNS name of ALB |
| <a name="output_alb_public_http_listener_arn"></a> [alb\_public\_http\_listener\_arn](#output\_alb\_public\_http\_listener\_arn) | Public ALB HTTP listener ARN |
| <a name="output_alb_public_https_listener_arn"></a> [alb\_public\_https\_listener\_arn](#output\_alb\_public\_https\_listener\_arn) | Public ALB HTTPS listener ARN |
| <a name="output_alb_public_name"></a> [alb\_public\_name](#output\_alb\_public\_name) | Public ALB name |
| <a name="output_alb_public_sgid"></a> [alb\_public\_sgid](#output\_alb\_public\_sgid) | Public ALB security group ID |
| <a name="output_alb_public_zone_id"></a> [alb\_public\_zone\_id](#output\_alb\_public\_zone\_id) | Zone ID for public ALB |
| <a name="output_alb_restricted_all_ingress_sgid"></a> [alb\_restricted\_all\_ingress\_sgid](#output\_alb\_restricted\_all\_ingress\_sgid) | Restricted ALB security group ID allowing all ingress traffic from ALB |
| <a name="output_alb_restricted_arn"></a> [alb\_restricted\_arn](#output\_alb\_restricted\_arn) | Restricted ALB arn |
| <a name="output_alb_restricted_arn_suffix"></a> [alb\_restricted\_arn\_suffix](#output\_alb\_restricted\_arn\_suffix) | The ARN suffix of the ALB |
| <a name="output_alb_restricted_default_target_group_arn"></a> [alb\_restricted\_default\_target\_group\_arn](#output\_alb\_restricted\_default\_target\_group\_arn) | Restricted ALB default target group arn |
| <a name="output_alb_restricted_dnsname"></a> [alb\_restricted\_dnsname](#output\_alb\_restricted\_dnsname) | DNS name of ALB |
| <a name="output_alb_restricted_http_listener_arn"></a> [alb\_restricted\_http\_listener\_arn](#output\_alb\_restricted\_http\_listener\_arn) | Restricted ALB HTTP listener ARN |
| <a name="output_alb_restricted_https_listener_arn"></a> [alb\_restricted\_https\_listener\_arn](#output\_alb\_restricted\_https\_listener\_arn) | Restricted ALB HTTPS listener ARN |
| <a name="output_alb_restricted_name"></a> [alb\_restricted\_name](#output\_alb\_restricted\_name) | Restricted ALB name |
| <a name="output_alb_restricted_sgid"></a> [alb\_restricted\_sgid](#output\_alb\_restricted\_sgid) | Restricted ALB security group ID |
| <a name="output_alb_restricted_zone_id"></a> [alb\_restricted\_zone\_id](#output\_alb\_restricted\_zone\_id) | Zone ID for restricted ALB |
| <a name="output_bastion_ingress_sgid"></a> [bastion\_ingress\_sgid](#output\_bastion\_ingress\_sgid) | Security Group ID for access from Bastion host |
| <a name="output_deploy_bucket"></a> [deploy\_bucket](#output\_deploy\_bucket) | Name of S3 bucket |
| <a name="output_deploy_rw_arn"></a> [deploy\_rw\_arn](#output\_deploy\_rw\_arn) | Read/write policy for S3 bucket |
| <a name="output_docsvcs_app_name"></a> [docsvcs\_app\_name](#output\_docsvcs\_app\_name) | Name of Docsvcs Elastic Beanstalk application |
| <a name="output_es_arn"></a> [es\_arn](#output\_es\_arn) | ARN of the Elasticsearch domain |
| <a name="output_es_domain_name"></a> [es\_domain\_name](#output\_es\_domain\_name) | Domain name of cluster |
| <a name="output_es_endpoint"></a> [es\_endpoint](#output\_es\_endpoint) | Domain-specific endpoint used to submit index, search, and data upload requests |
| <a name="output_es_read_policy_arn"></a> [es\_read\_policy\_arn](#output\_es\_read\_policy\_arn) | Default domain read only policy ARN |
| <a name="output_es_write_policy_arn"></a> [es\_write\_policy\_arn](#output\_es\_write\_policy\_arn) | Default domain write policy ARN |
| <a name="output_mit_saml_arn"></a> [mit\_saml\_arn](#output\_mit\_saml\_arn) | MIT Identity provider arn (SAML Federated login) |
| <a name="output_mitlib_cert"></a> [mitlib\_cert](#output\_mitlib\_cert) | *.mitlib.net wildcard certificate |
| <a name="output_nat_public_ips"></a> [nat\_public\_ips](#output\_nat\_public\_ips) | List of public Elastic IPs created for AWS NAT Gateway |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | List of private subnet IDs |
| <a name="output_private_zoneid"></a> [private\_zoneid](#output\_private\_zoneid) | Route53 Private Zone ID |
| <a name="output_private_zonename"></a> [private\_zonename](#output\_private\_zonename) | Route53 Private Zone name |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | List of public subnet IDs |
| <a name="output_public_zoneid"></a> [public\_zoneid](#output\_public\_zoneid) | Route53 Public Zone ID |
| <a name="output_public_zonename"></a> [public\_zonename](#output\_public\_zonename) | Route53 Public Zone name |
| <a name="output_ssm_profile_name"></a> [ssm\_profile\_name](#output\_ssm\_profile\_name) | Name of the SSM profile for the GLOBAL environment |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | VPC ID |