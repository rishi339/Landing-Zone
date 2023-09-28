resource "oci_bastion_bastion" "bastion" {

  bastion_type     = var.bastion_bastion_type
  compartment_id   = oci_identity_compartment.hub_management_compartment.id
  target_subnet_id = oci_core_subnet.hub_mgmt_subnet.id

  client_cidr_block_allow_list = var.bastion_client_cidr_block_allow_list
  max_session_ttl_in_seconds   = var.bastion_max_session_ttl_in_seconds
  name                         = var.bastion_name
  defined_tags = {
    "tag-oci.tag-key-env" = "prod",
    "tag-oci.tag-key-reg" = "ash",
  }
}

