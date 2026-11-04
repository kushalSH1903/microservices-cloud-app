output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.app.id
}

output "instance_public_ip" {
  description = "Public IP of the EC2 host"
  value       = aws_instance.app.public_ip
}

output "ssh_command" {
  description = "Command to log in"
  value       = "ssh -i ~/.ssh/devops-key ubuntu@${aws_instance.app.public_ip}"
}

output "ecr_repository_urls" {
  description = "ECR repository URL per service"
  value       = { for name, repo in aws_ecr_repository.services : name => repo.repository_url }
}
