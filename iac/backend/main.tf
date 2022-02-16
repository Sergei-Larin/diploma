# ---------------------------------------------------------------------------------------------------------------------
# Proviision AWS environment in any Region for diploma project
# Create :
#	- VPC 
#	- PUBLIC AND PRIVATE SUBNETS
#	- ROUTE TABLE FOR SUBNETS
#	- SECURITY GROUPS FOR SERVICES
#	- DATABASE INSTANCE
#	- JENKINS EC2 INSTANCE
# 	- SONARQUBE EC2 INSTANCE
#	- ELASTIC KUBERNETES SERVICE
#	- AMAZON ECR
#
# Made by Sergei Larin
# ---------------------------------------------------------------------------------------------------------------------

terraform {
	required_providers {
		aws = {
			source  = "hashicorp/aws"
			version = "~> 3.0"
		}
	    sonarqube = {
		  source = "jdamata/sonarqube"
		}
	}
	required_version = "~> 1.0"
}

provider "aws" {
    region = var.default_aws_region
}

resource "aws_s3_bucket" "state" {
  bucket = "tf-state-bucket-epam-diploma"
  acl    = "private"

  tags =  merge (var.common_tags, {Name = "tfstate backend"})

  versioning {
	  enabled = true
  }


}
