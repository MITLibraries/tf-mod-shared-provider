##########################
##### Shared Network #####
##########################

##### VPC Outputs #####
output "vpc_id" {
  description = "VPC ID"
  value       = "${data.terraform_remote_state.network.vpc_id}"
}

output "private_subnets" {
  description = "List of private subnet IDs"
  value       = "${data.terraform_remote_state.network.private_subnets}"
}

output "public_subnets" {
  description = "List of public subnet IDs"
  value       = "${data.terraform_remote_state.network.public_subnets}"
}

output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = "${data.terraform_remote_state.network.nat_public_ips}"
}

##### ALB Outputs #####
output "alb_restricted_arn" {
  description = "Restricted ALB arn"
  value       = "${data.terraform_remote_state.network.alb_restricted_arn}"
}

output "alb_restricted_arn_suffix" {
  description = "The ARN suffix of the ALB"
  value       = "${data.terraform_remote_state.network.alb_restricted_arn_suffix}"
}

output "alb_restricted_name" {
  description = "Restricted ALB name"
  value       = "${data.terraform_remote_state.network.alb_restricted_name}"
}

output "alb_restricted_dnsname" {
  description = "DNS name of ALB"
  value       = "${data.terraform_remote_state.network.alb_restricted_dnsname}"
}

output "alb_restricted_sgid" {
  description = "Restricted ALB security group ID"
  value       = "${data.terraform_remote_state.network.alb_restricted_sgid}"
}

output "alb_restricted_default_target_group_arn" {
  description = "Restricted ALB default target group arn"
  value       = "${data.terraform_remote_state.network.alb_restricted_default_target_group_arn}"
}

output "alb_restricted_http_listener_arn" {
  description = "Restricted ALB HTTP listener ARN"
  value       = "${data.terraform_remote_state.network.alb_restricted_http_listener_arn}"
}

output "alb_restricted_https_listener_arn" {
  description = "Restricted ALB HTTPS listener ARN"
  value       = "${data.terraform_remote_state.network.alb_restricted_https_listener_arn}"
}

output "alb_restricted_all_ingress_sgid" {
  description = "Restricted ALB security group ID allowing all ingress traffic from ALB"
  value       = "${data.terraform_remote_state.network.alb_restricted_all_ingress_sgid}"
}

#########################
##### Shared Global #####
#########################

##### DNS/Certs Outputs #####
output "public_zoneid" {
  description = "Route53 Public Zone ID"
  value       = "${data.terraform_remote_state.global.public_zoneid}"
}

output "public_zonename" {
  description = "Route53 Public Zone name"
  value       = "${data.terraform_remote_state.global.public_zonename}"
}

output "private_zoneid" {
  description = "Route53 Private Zone ID"
  value       = "${data.terraform_remote_state.global.private_zoneid}"
}

output "private_zonename" {
  description = "Route53 Private Zone name"
  value       = "${data.terraform_remote_state.global.private_zonename}"
}

output "mitlib_cert" {
  description = "*.mitlib.net wildcard certificate"
  value       = "${data.terraform_remote_state.global.mitlib_cert}"
}

output "mit_saml_arn" {
  description = "MIT Identity provider arn (SAML Federated login)"
  value       = "${data.terraform_remote_state.global.mit_saml_arn}"
}

##### AWS ElasticSearch Outputs #####
output "es_arn" {
  description = "ARN of the Elasticsearch domain"
  value       = "${data.terraform_remote_state.es.es_arn}"
}

output "es_endpoint" {
  description = "Domain-specific endpoint used to submit index, search, and data upload requests"
  value       = "${data.terraform_remote_state.es.es_endpoint}"
}

output "es_read_policy_arn" {
  description = "Default domain read only policy ARN"
  value       = "${data.terraform_remote_state.es.read_policy_arn}"
}

output "es_write_policy_arn" {
  description = "Default domain write policy ARN"
  value       = "${data.terraform_remote_state.es.write_policy_arn}"
}

output "es_domain_name" {
  description = "Domain name of cluster"
  value       = "${data.terraform_remote_state.es.domain_name}"
}
