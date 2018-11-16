This module provides a layer of abstraction to accessing shared resources. It does not itself create any resources or maintain any state, it simply reads the state files of various shared resources. The goal is to hide some of the uglier, repetitive config blocks behind a clean interface.

When you add a new shared resource, you will also need to update this module with whatever outputs you want to provide access to.

## Outputs

| Name | Description |
|------|-------------|
| private\_subnets | List of private subnet IDs |
| public\_subnets | List of public subnet IDs |
| vpc\_id | VPC ID |

