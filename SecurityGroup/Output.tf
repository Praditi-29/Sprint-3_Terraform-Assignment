#Output Block to print Security Group Name
output "SecurityGroupName" {
    value = aws_security_group.SecurityGroup.name
}

#Output Block to print Vpc Id attached with security group
output "Vpc-id" {
    value = aws_security_group.SecurityGroup.vpc_id
}