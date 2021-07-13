##########################
##### Shared Network #####
##########################

##### VPC Outputs #####
output "vpc_id" {
  description = "VPC ID"
  value       = data.terraform_remote_state.network.outputs.vpc_id
}

output "private_subnets" {
  description = "List of private subnet IDs"
  value       = data.terraform_remote_state.network.outputs.private_subnets
}

output "public_subnets" {
  description = "List of public subnet IDs"
  value       = data.terraform_remote_state.network.outputs.public_subnets
}

output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = data.terraform_remote_state.network.outputs.nat_public_ips
}

##### ALB Outputs #####

# Restricted ALB
output "alb_restricted_arn" {
  description = "Restricted ALB arn"
  value       = data.terraform_remote_state.network.outputs.alb_restricted_arn
}

output "alb_restricted_arn_suffix" {
  description = "The ARN suffix of the ALB"
  value       = data.terraform_remote_state.network.outputs.alb_restricted_arn_suffix
}

output "alb_restricted_name" {
  description = "Restricted ALB name"
  value       = data.terraform_remote_state.network.outputs.alb_restricted_name
}

output "alb_restricted_dnsname" {
  description = "DNS name of ALB"
  value       = data.terraform_remote_state.network.outputs.alb_restricted_dnsname
}

output "alb_restricted_sgid" {
  description = "Restricted ALB security group ID"
  value       = data.terraform_remote_state.network.outputs.alb_restricted_sgid
}

output "alb_restricted_zone_id" {
  description = "Zone ID for restricted ALB"
  value       = data.terraform_remote_state.network.outputs.alb_restricted_zone_id
}

output "alb_restricted_default_target_group_arn" {
  description = "Restricted ALB default target group arn"
  value       = data.terraform_remote_state.network.outputs.alb_restricted_default_target_group_arn
}

output "alb_restricted_http_listener_arn" {
  description = "Restricted ALB HTTP listener ARN"
  value       = data.terraform_remote_state.network.outputs.alb_restricted_http_listener_arn
}

output "alb_restricted_https_listener_arn" {
  description = "Restricted ALB HTTPS listener ARN"
  value       = data.terraform_remote_state.network.outputs.alb_restricted_https_listener_arn
}

output "alb_restricted_all_ingress_sgid" {
  description = "Restricted ALB security group ID allowing all ingress traffic from ALB"
  value       = data.terraform_remote_state.network.outputs.alb_restricted_all_ingress_sgid
}

# Public ALB
output "alb_public_arn" {
  description = "Public ALB arn"
  value       = data.terraform_remote_state.network.outputs.alb_public_arn
}

output "alb_public_arn_suffix" {
  description = "The ARN suffix of the ALB"
  value       = data.terraform_remote_state.network.outputs.alb_public_arn_suffix
}

output "alb_public_name" {
  description = "Public ALB name"
  value       = data.terraform_remote_state.network.outputs.alb_public_name
}

output "alb_public_dnsname" {
  description = "DNS name of ALB"
  value       = data.terraform_remote_state.network.outputs.alb_public_dnsname
}

output "alb_public_sgid" {
  description = "Public ALB security group ID"
  value       = data.terraform_remote_state.network.outputs.alb_public_sgid
}

output "alb_public_zone_id" {
  description = "Zone ID for public ALB"
  value       = data.terraform_remote_state.network.outputs.alb_public_zone_id
}

output "alb_public_default_target_group_arn" {
  description = "Public ALB default target group arn"
  value       = data.terraform_remote_state.network.outputs.alb_public_default_target_group_arn
}

output "alb_public_http_listener_arn" {
  description = "Public ALB HTTP listener ARN"
  value       = data.terraform_remote_state.network.outputs.alb_public_http_listener_arn
}

output "alb_public_https_listener_arn" {
  description = "Public ALB HTTPS listener ARN"
  value       = data.terraform_remote_state.network.outputs.alb_public_https_listener_arn
}

output "alb_public_all_ingress_sgid" {
  description = "Public ALB security group ID allowing all ingress traffic from ALB"
  value       = data.terraform_remote_state.network.outputs.alb_public_all_ingress_sgid
}

#########################
##### Shared Global #####
#########################

##### DNS/Certs Outputs #####
output "public_zoneid" {
  description = "Route53 Public Zone ID"
  value       = data.terraform_remote_state.global.outputs.public_zoneid
}

output "public_zonename" {
  description = "Route53 Public Zone name"
  value       = data.terraform_remote_state.global.outputs.public_zonename
}

output "private_zoneid" {
  description = "Route53 Private Zone ID"
  value       = data.terraform_remote_state.global.outputs.private_zoneid
}

output "private_zonename" {
  description = "Route53 Private Zone name"
  value       = data.terraform_remote_state.global.outputs.private_zonename
}

output "mitlib_cert" {
  description = "*.mitlib.net wildcard certificate"
  value       = data.terraform_remote_state.global.outputs.mitlib_cert
}

output "mit_saml_arn" {
  description = "MIT Identity provider arn (SAML Federated login)"
  value       = data.terraform_remote_state.global.outputs.mit_saml_arn
}
# IAM ROLES/PROFILES

# SSM Profile name
output "ssm_profile_name" {
  description = "Name of the SSM profile for the GLOBAL environment"
  value       = data.terraform_remote_state.global.outputs.ssm_profile_name
}
##### Elastic Beanstalk Application Name Outputs #####

output "docsvcs_app_name" {
  description = "Name of Docsvcs Elastic Beanstalk application"
  value       = data.terraform_remote_state.global.outputs.docsvcs_beanstalk_name
}

##### AWS ElasticSearch Outputs #####
output "es_arn" {
  description = "ARN of the Elasticsearch domain"
  value       = data.terraform_remote_state.es.outputs.es_arn
}

output "es_endpoint" {
  description = "Domain-specific endpoint used to submit index, search, and data upload requests"
  value       = data.terraform_remote_state.es.outputs.es_endpoint
}

output "es_read_policy_arn" {
  description = "Default domain read only policy ARN"
  value       = data.terraform_remote_state.es.outputs.read_policy_arn
}

output "es_write_policy_arn" {
  description = "Default domain write policy ARN"
  value       = data.terraform_remote_state.es.outputs.write_policy_arn
}

output "es_domain_name" {
  description = "Domain name of cluster"
  value       = data.terraform_remote_state.es.outputs.domain_name
}

##### Deploy Outputs #####
output "deploy_bucket" {
  description = "Name of S3 bucket"
  value       = data.terraform_remote_state.deploy.outputs.name
}

output "deploy_rw_arn" {
  description = "Read/write policy for S3 bucket"
  value       = data.terraform_remote_state.deploy.outputs.rw_arn
}

##### Bastion Outputs #####
output "bastion_ingress_sgid" {
  description = "Security Group ID for access from Bastion host"
  value       = data.terraform_remote_state.bastion.outputs.ingress_from_bastion_sg_id
}
