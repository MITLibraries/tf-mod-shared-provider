This module provides a layer of abstraction to accessing shared resources. It does not itself create any resources or maintain any state, it simply reads the state files of various shared resources. The goal is to hide some of the uglier, repetitive config blocks behind a clean interface.

When you add a new shared resource, you will also need to update this module with whatever outputs you want to provide access to.

## Inputs

| Name      | Description  |  Type  | Default | Required |
| --------- | ------------ | :----: | :-----: | :------: |
| workspace | TF workspace | string |    "    |    no    |


## Outputs

| Name | Description |
|------|-------------|
| alb\_public\_all\_ingress\_sgid | Public ALB security group ID allowing all ingress traffic from ALB |
| alb\_public\_arn | Public ALB arn |
| alb\_public\_arn\_suffix | The ARN suffix of the ALB |
| alb\_public\_default\_target\_group\_arn | Public ALB default target group arn |
| alb\_public\_dnsname | DNS name of ALB |
| alb\_public\_http\_listener\_arn | Public ALB HTTP listener ARN |
| alb\_public\_https\_listener\_arn | Public ALB HTTPS listener ARN |
| alb\_public\_name | Public ALB name |
| alb\_public\_sgid | Public ALB security group ID |
| alb\_restricted\_all\_ingress\_sgid | Restricted ALB security group ID allowing all ingress traffic from ALB |
| alb\_restricted\_arn | Restricted ALB arn |
| alb\_restricted\_arn\_suffix | The ARN suffix of the ALB |
| alb\_restricted\_default\_target\_group\_arn | Restricted ALB default target group arn |
| alb\_restricted\_dnsname | DNS name of ALB |
| alb\_restricted\_http\_listener\_arn | Restricted ALB HTTP listener ARN |
| alb\_restricted\_https\_listener\_arn | Restricted ALB HTTPS listener ARN |
| alb\_restricted\_name | Restricted ALB name |
| alb\_restricted\_sgid | Restricted ALB security group ID |
| bastion\_ingress\_sgid | Security Group ID for access from Bastion host |
| deploy\_bucket | Name of S3 bucket |
| deploy\_rw\_arn | Read/write policy for S3 bucket |
| docsvcs\_app\_name | Name of Docsvcs Elastic Beanstalk application |
| es\_arn | ARN of the Elasticsearch domain |
| es\_domain\_name | Domain name of cluster |
| es\_endpoint | Domain-specific endpoint used to submit index, search, and data upload requests |
| es\_read\_policy\_arn | Default domain read only policy ARN |
| es\_write\_policy\_arn | Default domain write policy ARN |
| mit\_saml\_arn | MIT Identity provider arn (SAML Federated login) |
| mitlib\_cert | *.mitlib.net wildcard certificate |
| nat\_public\_ips | List of public Elastic IPs created for AWS NAT Gateway |
| private\_subnets | List of private subnet IDs |
| private\_zoneid | Route53 Private Zone ID |
| private\_zonename | Route53 Private Zone name |
| public\_subnets | List of public subnet IDs |
| public\_zoneid | Route53 Public Zone ID |
| public\_zonename | Route53 Public Zone name |
| vpc\_id | VPC ID |
