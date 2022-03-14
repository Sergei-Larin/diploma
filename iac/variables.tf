# ---------------------------------------------------------------------------------------------------------------------
# Environments for diploma project
#
# Made by Sergei Larin
# ---------------------------------------------------------------------------------------------------------------------

variable "default_aws_region" {    
	description = "AWS Region"
	type 	    = string
}


variable "common_tags" {
	description = "Common tags to apply to all resources"
	type  		= map
	default = {
		Owner   = "Sergei Larin"
		Project = "EPAM diploma"
		Managed_by  = "Managed by terraform"
		Email = "sergei_larin@epam.com"
	}
}

# ---------------------------------------------------------------------------------------------------------------------
# VPC
# ---------------------------------------------------------------------------------------------------------------------
variable "vpc_cidr_block" {    
	description = "Cidr block for VPC"
	type 		= string
}

variable "public_subnet_a_cidr_block" {    
	description = "Cidr block for A public subnet"
	type 		= string
}

variable "public_subnet_b_cidr_block" {    
	description = "Cidr block for B public subnet"
	type 		= string
}

variable "private_subnet_a_cidr_block" {    
	description = "Cidr block for A private subnet"
	type 		= string
}

variable "private_subnet_b_cidr_block" {    
	description = "Cidr block for B private subnet"
	type 		= string
}

# ---------------------------------------------------------------------------------------------------------------------
# INSTANCE
# ---------------------------------------------------------------------------------------------------------------------
variable "jenkins_ports" {
	description = "List of port to open for server"
	type        = list
	default     = ["80", "443", "8080", "50000"]
}

variable "allow_ssh_from_ip" {
	description = "Allow ssh from IP"
	type        = string
}

variable "aws_public_key" {    
	description = "Public key for connect aws EC2"
	type 		= string
}

variable "aws_private_key" {    
	description = "Public key for connect aws EC2"
	type 		= string
}

variable "instance_type" {    
	default = "t2.medium"
}

variable "app_key" {    
	description = "Key for jenkins iac integration"
	type 		= string
}

variable "jenkins_admin_name" {    
	description = "Main admin name in jenkins iac integration"
	type 		= string
}

variable "jenkins_admin_name_pass" {    
	description = "Main admin password in jenkins iac integration"
	type 		= string
}
# ---------------------------------------------------------------------------------------------------------------------
# DATABASE GENERAL
# ---------------------------------------------------------------------------------------------------------------------

variable "db_username" {
  description = "Master username of the DB"
  type        = string
  default     = "masterdb"
}

variable "engine_name" {
  description = "Name of the database engine"
  type        = string
  default     = "postgres"
}

variable "engine_version" {
  description = "Version of the database to be launched"
  default     = "14.1"
  type        = string
}

variable "family" {
  description = "Family of the database"
  type        = string
  default     = "postgres14"
}

variable "port" {
  description = "Port which the database should run on"
  type        = number
  default     = 5432
}

variable "allocated_storage" {
  description = "Disk space to be allocated to the DB instance"
  type        = number
  default     = 5
}

variable "instance_class" {
  description = "Instance class to be used to run the database"
  type        = string
  default     = "db.t3.micro"
}

# ---------------------------------------------------------------------------------------------------------------------
# DATABASE DEV
# ---------------------------------------------------------------------------------------------------------------------

variable "dev_name" {
  description = "Name of the dev database"
  type        = string
  default     = "dev-pgsql"
}

variable "dev_db_name" {
  description = "Name of the database to be created"
  type        = string
  default     = "diplomadev"
}

variable "dev_rds_pass_key" {
  description = "Name of the rds password to be created"
  type        = string
  default     = "/database/dev-password/master"
}

# ---------------------------------------------------------------------------------------------------------------------
# DATABASE PROD
# ---------------------------------------------------------------------------------------------------------------------

variable "prod_name" {
  description = "Name of the prod database"
  type        = string
  default     = "prod-pgsql"
}

variable "prod_rds_pass_key" {
  description = "Name of the rds password to be created"
  type        = string
  default     = "/database/prod-password/master"
}

variable "prod_db_name" {
  description = "Name of the database to be created"
  type        = string
  default     = "diploma"
}

# ---------------------------------------------------------------------------------------------------------------------
# ELASTIC KUBERNETES SERVICE
# ---------------------------------------------------------------------------------------------------------------------

variable "k8s_name" {
  description = "Kubernetes Cluster Name"
  type        = string
  default       = "k8s"
}

variable "k8s_version" {
  description = "Kubernetes Version"
  type        = string
  default       = "1.21"
}

variable "k8s_node_type" {
  description = "Worrker node type"
  type        = string
  default     = "t3.medium"
}

variable "github_token" {
  description = "GitHub token for integration"
  type        = string
}

variable "aws_id" {
  description = "AWS access key ID"
  type        = string
}

variable "aws_key" {
  description = "AWS secret access key"
  type        = string
}