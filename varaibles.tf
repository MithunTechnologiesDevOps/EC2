variable "ami_id" {
  type = string
  description = "AMI ID"
}

variable "instance_type" {
  type = string
  description = "Ec2 Instance Type"
}

variable "availability_zone" {
    type = string
    description = "Availability Zone"
}
variable "tags" {
    type = map(string)
    description = "Tags "
}

variable "security_group_name" {
   type = string
   description = "SG Name"
}

variable "security_description" {
   type = string
   description = "SG Description"
}

variable "security_group_inbound_rules" {
  type = list(object({
    from_port = number
    to_port = number
    description = string
    protocol = string
    cidrblocks = list(string)
  }))
  description = "Secuirty Group In Bound Rules"
}

variable "sg_tags" {
  type = map(string)
  description = "Tag for SG"
}