/**
 * This module provides a layer of abstraction to accessing shared resources. It does not itself create any resources or maintain any state, it simply reads the state files of various shared resources. The goal is to hide some of the uglier, repetitive config blocks behind a clean interface.
 *
 * When you add a new shared resource, you will also need to update this module with whatever outputs you want to provide access to.
 */

locals {
  environment = "${var.workspace != "" ? lower(var.workspace) : lower(terraform.workspace)}"
}

data "terraform_remote_state" "global" {
  backend   = "s3"
  workspace = "global"

  config {
    region         = "us-east-1"
    bucket         = "mit-tfstates-state"
    key            = "global/global.tfstate"
    dynamodb_table = "mit-tfstates-state-lock"
    encrypt        = true
  }
}

data "terraform_remote_state" "network" {
  backend   = "s3"
  workspace = "${local.environment}"

  config {
    region         = "us-east-1"
    bucket         = "mit-tfstates-state"
    key            = "network/terraform.tfstate"
    dynamodb_table = "mit-tfstates-state-lock"
    encrypt        = true
  }
}
