# Output for Private EC2 Instances' Private IPs
output "private_server_private_ips" {
  value = [for instance in aws_instance.private-server : instance.private_ip]
  description = "The private IPs of the private EC2 instances"
}

# Output for Public EC2 Instances' Public IPs
output "public_server_public_ips" {
  value = [for instance in aws_instance.public-server : instance.public_ip]
  description = "The public IPs of the public EC2 instances"
}

# Output for Public EC2 Instances' Private IPs
output "public_server_private_ips" {
  value = [for instance in aws_instance.public-server : instance.private_ip]
  description = "The private IPs of the public EC2 instances"
}

# Output for Private EC2 Instances' Public IPs (if any)
output "private_server_public_ips" {
  value = [for instance in aws_instance.private-server : instance.public_ip]
  description = "The public IPs of the private EC2 instances (if any)"
  # Public IPs will not be assigned to private EC2 unless explicitly configured
}

# Output the count of EC2 instances created for private servers
output "private_server_count" {
  value = length(aws_instance.private-server)
  description = "The number of private EC2 instances created"
}

# Output the count of EC2 instances created for public servers
output "public_server_count" {
  value = length(aws_instance.public-server)
  description = "The number of public EC2 instances created"
}
