# -----------------------------------------------------------------------------
#                               SUBNET IN HUB VCN                             #
# -----------------------------------------------------------------------------

resource "oci_core_subnet" "hub_mgmt_subnet" {

  cidr_block     = var.hub_mgmt_subnet_cidr_block
  compartment_id = oci_identity_compartment.hub_network_compartment.id
  vcn_id         = oci_core_vcn.hub_vcn.id
  display_name   = var.hub_mgmt_subnet_display_name

  prohibit_public_ip_on_vnic = var.hub_mgmt_subnet_prohibit_public_ip_on_vnic
  route_table_id             = oci_core_route_table.hub_mgmt_route_table.id
  security_list_ids          = [oci_core_security_list.hub_mgmt_security_list.id]
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "hub",
  }
}

resource "oci_core_subnet" "hub_trt_subnet" {

  cidr_block     = var.hub_trt_subnet_cidr_block
  compartment_id = oci_identity_compartment.hub_network_compartment.id
  vcn_id         = oci_core_vcn.hub_vcn.id
  display_name   = var.hub_trt_subnet_display_name

  prohibit_public_ip_on_vnic = var.hub_trt_subnet_prohibit_public_ip_on_vnic
  route_table_id             = oci_core_route_table.hub_trt_route_table.id
  security_list_ids          = [oci_core_security_list.hub_trt_security_list.id]
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "hub",
  }
}

resource "oci_core_subnet" "hub_untrt_subnet" {

  cidr_block     = var.hub_untrt_subnet_cidr_block
  compartment_id = oci_identity_compartment.hub_network_compartment.id
  vcn_id         = oci_core_vcn.hub_vcn.id
  display_name   = var.hub_untrt_subnet_display_name

  prohibit_public_ip_on_vnic = var.hub_untrt_subnet_prohibit_public_ip_on_vnic
  route_table_id             = oci_core_route_table.hub_untrt_route_table.id
  security_list_ids          = [oci_core_security_list.hub_untrt_security_list.id]
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "hub",
  }

}

# -----------------------------------------------------------------------------
#                               SUBNET IN PROD VCN                            #
# -----------------------------------------------------------------------------

resource "oci_core_subnet" "prod_app_subnet" {

  cidr_block     = var.prod_app_subnet_cidr_block
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_app_subnet_display_name

  prohibit_public_ip_on_vnic = var.prod_app_subnet_prohibit_public_ip_on_vnic
  route_table_id             = oci_core_route_table.prod_app_route_table.id
  security_list_ids          = [oci_core_security_list.prod_app_security_list.id]
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "app",
  }

}

resource "oci_core_subnet" "prod_pub_lb_subnet" {

  cidr_block     = var.prod_pub_lb_subnet_cidr_block
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_pub_lb_subnet_display_name

  prohibit_public_ip_on_vnic = var.prod_pub_lb_subnet_prohibit_public_ip_on_vnic
  route_table_id             = oci_core_route_table.prod_pub_lb_route_table.id
  security_list_ids          = [oci_core_security_list.prod_pub_lb_security_list.id]
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "lb",
  }

}

resource "oci_core_subnet" "prod_db_subnet" {

  cidr_block     = var.prod_db_subnet_cidr_block
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_db_subnet_display_name

  prohibit_public_ip_on_vnic = var.prod_db_subnet_prohibit_public_ip_on_vnic
  route_table_id             = oci_core_route_table.prod_db_route_table.id
  security_list_ids          = [oci_core_security_list.prod_db_security_list.id]
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "db",
  }

}

resource "oci_core_subnet" "prod_pvt_lb_subnet" {

  cidr_block     = var.prod_pvt_lb_subnet_cidr_block
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_pvt_lb_subnet_display_name

  prohibit_public_ip_on_vnic = var.prod_pvt_lb_subnet_prohibit_public_ip_on_vnic
  route_table_id             = oci_core_route_table.prod_pvt_lb_route_table.id
  security_list_ids          = [oci_core_security_list.prod_pvt_lb_security_list.id]
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "lb",
  }

}

resource "oci_core_subnet" "prod_dmz_subnet" {

  cidr_block     = var.prod_dmz_subnet_cidr_block
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_dmz_subnet_display_name

  prohibit_public_ip_on_vnic = var.prod_dmz_subnet_prohibit_public_ip_on_vnic
  route_table_id             = oci_core_route_table.prod_dmz_route_table.id
  security_list_ids          = [oci_core_security_list.prod_dmz_security_list.id]
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "dmz",
  }

}

resource "oci_core_subnet" "prod_exa_subnet" {

  cidr_block     = var.prod_exa_subnet_cidr_block
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_exa_subnet_display_name

  prohibit_public_ip_on_vnic = var.prod_exa_subnet_prohibit_public_ip_on_vnic
  route_table_id             = oci_core_route_table.prod_exa_route_table.id
  security_list_ids          = [oci_core_security_list.prod_exa_security_list.id]
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "exa",
  }

}

# -----------------------------------------------------------------------------
#                               SUBNET IN NON PROD VCN                        #
# -----------------------------------------------------------------------------

resource "oci_core_subnet" "non_prod_app_subnet" {
  provider       = oci.non_prod_reg
  cidr_block     = var.non_prod_app_subnet_cidr_block
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_app_subnet_display_name

  prohibit_public_ip_on_vnic = var.non_prod_app_subnet_prohibit_public_ip_on_vnic
  route_table_id             = oci_core_route_table.non_prod_app_route_table.id
  security_list_ids          = [oci_core_security_list.non_prod_app_security_list.id]
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "app",
  }
}

resource "oci_core_subnet" "non_prod_pub_lb_subnet" {
  provider       = oci.non_prod_reg
  cidr_block     = var.non_prod_pub_lb_subnet_cidr_block
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id

  display_name               = var.non_prod_pub_lb_subnet_display_name
  prohibit_public_ip_on_vnic = var.non_prod_pub_lb_subnet_prohibit_public_ip_on_vnic
  route_table_id             = oci_core_route_table.non_prod_pub_lb_route_table.id
  security_list_ids          = [oci_core_security_list.non_prod_pub_lb_security_list.id]
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "lb",
  }
}

resource "oci_core_subnet" "non_prod_db_subnet" {
  provider       = oci.non_prod_reg
  cidr_block     = var.non_prod_db_subnet_cidr_block
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_db_subnet_display_name

  prohibit_public_ip_on_vnic = var.non_prod_db_subnet_prohibit_public_ip_on_vnic
  route_table_id             = oci_core_route_table.non_prod_db_route_table.id
  security_list_ids          = [oci_core_security_list.non_prod_db_security_list.id]
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "db",
  }
}

resource "oci_core_subnet" "non_prod_pvt_lb_subnet" {
  provider       = oci.non_prod_reg
  cidr_block     = var.non_prod_pvt_lb_subnet_cidr_block
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_pvt_lb_subnet_display_name

  prohibit_public_ip_on_vnic = var.non_prod_pvt_lb_subnet_prohibit_public_ip_on_vnic
  route_table_id             = oci_core_route_table.non_prod_pvt_lb_route_table.id
  security_list_ids          = [oci_core_security_list.non_prod_pvt_lb_security_list.id]
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "lb",
  }
}

resource "oci_core_subnet" "non_prod_dmz_subnet" {
  provider       = oci.non_prod_reg
  cidr_block     = var.non_prod_dmz_subnet_cidr_block
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_dmz_subnet_display_name

  prohibit_public_ip_on_vnic = var.non_prod_dmz_subnet_prohibit_public_ip_on_vnic
  route_table_id             = oci_core_route_table.non_prod_dmz_route_table.id
  security_list_ids          = [oci_core_security_list.non_prod_dmz_security_list.id]
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "dmz",
  }
}

resource "oci_core_subnet" "non_prod_exa_subnet" {
  provider       = oci.non_prod_reg
  cidr_block     = var.non_prod_exa_subnet_cidr_block
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_exa_subnet_display_name

  prohibit_public_ip_on_vnic = var.non_prod_exa_subnet_prohibit_public_ip_on_vnic
  route_table_id             = oci_core_route_table.non_prod_exa_route_table.id
  security_list_ids          = [oci_core_security_list.non_prod_exa_security_list.id]
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "exa",
  }
}

