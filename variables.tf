variable "project_ip_access_list_lookup" {
  description = <<EOT
Map of project_ip_access_list_lookup, attributes below
Required:
    - project_id
Optional:
    - aws_security_group
    - cidr_block
    - ip_address
EOT

  type = map(object({
    project_id         = string
    aws_security_group = optional(string)
    cidr_block         = optional(string)
    ip_address         = optional(string)
  }))
}

