# Infrastructure as code by Terraform
## Description
For create infrastructure you need have programms:
   * python
   * AWS-cli
   * powershell
   * curl
   * kubectl

## Prepare iac
1. Getenereate RSA key for AWS:
ssh-keygen

2. Create terraform.tfvars file with variables: from template varName="Value"

| Variable Name  | Examlple value | Description |
| ------------- | ------------- | ------------- |
| default_aws_region  | eu-central-1  | AWS Region  |
| vpc_cidr_block  | 10.10.0.0/16  | VPC range |
| public_subnet_a_cidr_block  | 10.10.1.0/24  | Public Subnet A in AWS |
| public_subnet_b_cidr_block  | 10.10.2.0/24  | Public Subnet B in AWS |
| private_subnet_a_cidr_block  | 10.10.11.0/24  | Private Subnet A in AWS |
| private_subnet_b_cidr_block  | 10.10.12.0/24  | Private Subnet A in AWS |
| allow_ssh_from_ip  | 10.10.10.10/32  | Allow ssh connection to AWS servers from ip |
| aws_public_key  | id_rsa.pub  | Path to public key |
| aws_private_key  | id_rsa | Path to private key |
| github_token  | LRtznWBhZalXXOsh | Github Api Token |
| aws_id  | AAAASDAAASDADAAasda  | AWS ID |
| aws_key  | AAAASDAAASDADAAasda111222  | AWS KEY |
| app_key  | 9a53423eadc598d6adf9  | Salt for Application |
| jenkins_admin_name  | admin  | Jenkins administrator name |
| jenkins_admin_name_pass  | Pass  | Jenkins administrator pass |

3. Copy jenkins_scripts/.env.example to jenkins_scripts/.env and edit variable for Jenkins Server if you need

4. Create infrastructure: 
    * terraform plan
    * terraform apply