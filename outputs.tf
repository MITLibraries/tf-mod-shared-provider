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
