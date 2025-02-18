output "security_group_id" {
  description = "The ID of the created security group"
  value       = aws_security_group.allow_all.id
}

output "security_group_name" {
  description = "The name of the created security group"
  value       = aws_security_group.allow_all.name
}

output "ingress_rules" {
  description = "List of ingress rules applied to the security group"
  value = [
    for rule in aws_security_group.allow_all.ingress : {
      from_port   = rule.from_port
      to_port     = rule.to_port
      protocol    = rule.protocol
      cidr_blocks = rule.cidr_blocks
    }
  ]
}

output "egress_rules" {
  description = "List of egress rules applied to the security group"
  value = [
    for rule in aws_security_group.allow_all.egress : {
      from_port   = rule.from_port
      to_port     = rule.to_port
      protocol    = rule.protocol
      cidr_blocks = rule.cidr_blocks
    }
  ]
}
