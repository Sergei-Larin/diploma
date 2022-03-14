output "data_aws_caller_identity" {
  value = data.aws_caller_identity.current.account_id
}

output "data_aws_region_name" {
  value = data.aws_region.current.name
}

output "data_aws_region_description" {
  value = data.aws_region.current.description
}

output "latest_aws_linux_id" {
  value = data.aws_ami.latest_aws_linux.id
}

output "jenkins_server_public_ip" {
  value = aws_instance.jenkins.public_ip
}

output "sonar_server_public_ip" {
  value = aws_instance.sonar.public_ip
}

# ---------------------------------------------------------------------------------------------------------------------
# DEVELOP DATABASE INSTANCE
# ---------------------------------------------------------------------------------------------------------------------

output "dev_rds_replica_connection_parameters" {
  description = "DEV RDS replica instance connection parameters"
  value       = "-h ${aws_db_instance.dev.address} -p ${aws_db_instance.dev.port} -U ${aws_db_instance.dev.username} ${var.dev_db_name}"
}

# ---------------------------------------------------------------------------------------------------------------------
# PRODUCTION DATABASE INSTANCE
# ---------------------------------------------------------------------------------------------------------------------

output "prod_rds_replica_connection_parameters" {
  description = "PROD RDS replica instance connection parameters"
  value       = "-h ${aws_db_instance.prod.address} -p ${aws_db_instance.prod.port} -U ${aws_db_instance.prod.username} ${var.prod_db_name}"
}

# ---------------------------------------------------------------------------------------------------------------------
# ELASTIC KUBERNETES SERVICE
# ---------------------------------------------------------------------------------------------------------------------

output "cluster_id" {
  description = "EKS cluster ID."
  value       = data.aws_eks_cluster.cluster.id
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = data.aws_eks_cluster.cluster.endpoint
}

output "region" {
  description = "AWS region"
  value       = var.default_aws_region
}

output "docker_registry" {
  description = "Registry for docker images"
  value       = aws_ecr_repository.ecr_registry.repository_url
}
