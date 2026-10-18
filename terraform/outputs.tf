
output "vpc_id" {
  description = "Default VPC used by the deployment"
  value       = data.aws_vpc.default.id
}

output "subnet_id" {
  description = "Selected subnet for the deployment"
  value       = data.aws_subnet.selected.id
}

output "ami_id" {
  description = "Amazon Linux 2023 AMI"
  value       = data.aws_ami.al2023.id
}

output "security_group_id" {
  description = "Web security group ID"
  value       = aws_security_group.web.id
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.web.id
}

output "public_ip" {
  description = "Public IP for the web server"
  value       = aws_instance.web.public_ip
}

output "public_url" {
  description = "HTTP URL for the web server"
  value       = "http://${aws_instance.web.public_ip}"
}
