#Shared/network TFstate Outputs
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

#Global TFState Outputs
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
