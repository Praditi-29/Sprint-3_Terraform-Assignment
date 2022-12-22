# NOTE: never declare excess variables which aren't in use in main.tf
variable "AMI-Id" {
    type = string
    description = "Default its Window AMI -ID"
}

variable "Instance_type" {
    type = string
    description = "Default instance is t2.micro free tier eligible"

}

variable "Tags" {
    type = map(any)
    description = "Necessary Tags to Apply"
}

variable "SG_name" {
  type=string
}

variable "SG_Descp" {
  type=string
}

variable "VPC-ID" {
  type=string
}

variable "ListOfPort" {
  type = list(number)
}

variable "description" {
  type = string
  
}
# variable "HTTPS-description" {
#     type=string 
# }

# variable "HTTP-description" {
#     type=string 
# }

# variable "SSH-description" {
#     type=string 
# }

# variable "HTTPS-ToPort" {
#   type=number
# }
# variable "HTTP-ToPort" {
#   type=number
# }
# variable "SSH-ToPort" {
#   type=number
# }

# variable "HTTPS-FromPort" {
#   type=number
# }

# variable "HTTP-FromPort" {
#   type=number
# }

# variable "SSH-FromPort" {
#   type=number
# }

variable "egress-FromPort" {
  type=number
}
variable "egress-TOPort" {
  type=number
}
variable "protocol" {
  type = string
}

variable "cidr_blocks" {
  type=list(string)
}

variable "ipv6_cidr_blocks" {
    type=list(string)
}

variable "egress-protocol" {
  type=string
}
