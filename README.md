This module provides a layer of abstraction to accessing shared resources. It does not itself create any resources or maintain any state, it simply reads the state files of various shared resources. The goal is to hide some of the uglier, repetitive config blocks behind a clean interface.

When you add a new shared resource, you will also need to update this module with whatever outputs you want to provide access to.

## Inputs

| Name      | Description  |  Type  |  Default | Required |
| --------- | ------------ | :----: | :------: | :------: |
| workspace | TF workspace | string | `` \| no |          |

## Outputs

| Name             | Description                |
| ---------------- | -------------------------- |
| private_subnets  | List of private subnet IDs |
| public_subnets   | List of public subnet IDs  |
| vpc_id           | VPC ID                     |
| public_zoneid    | Route53 Public Zone ID     |
| public_zonename  | Route53 Public Zone Name   |
| private_zoneid   | Route53 Public Zone ID     |
| private_zonename | Route53 Public Zone Name   |
