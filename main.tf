data "mongodbatlas_project_ip_access_list" "project_ip_access_list_lookup" {
  for_each = var.project_ip_access_list_lookup

  project_id         = each.value.project_id
  aws_security_group = each.value.aws_security_group
  cidr_block         = each.value.cidr_block
  ip_address         = each.value.ip_address
}

