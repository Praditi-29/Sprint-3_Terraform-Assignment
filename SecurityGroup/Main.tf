#Creating Ec2 instance
resource "aws_instance" "Ec2_Instance" {
    ami    = var.AMI-Id
    instance_type = var.Instance_type
    tags = var.Tags

    #Attaching security group with ec2 insatnce
    vpc_security_group_ids = [aws_security_group.SecurityGroup.id]
}

#Creating Security Group and Implementing Dynamic Block
resource "aws_security_group" "SecurityGroup" {
  name        = var.SG_name
  description = var.SG_Descp
  vpc_id      = var.VPC-ID
  
  #Dynamic Block (saving us from typing same code with diff values again and again)
  dynamic "ingress" {
    for_each = var.ListOfPort
    iterator = port
    content {
      description=var.description
      protocol = var.protocol
      from_port=port.value
      to_port=port.value
      cidr_blocks=var.cidr_blocks
    }
    
  }

  egress {
    from_port        = var.egress-FromPort
    to_port          = var.egress-TOPort
    protocol         = var.egress-protocol
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = var.ipv6_cidr_blocks
  }

  tags = var.Tags
}