# -----------------------------------------------------------------------------
#                               HUB ROUTE TABLE                               #
# -----------------------------------------------------------------------------
resource "oci_core_route_table" "hub_mgmt_route_table" {
  #Required
  compartment_id = oci_identity_compartment.hub_network_compartment.id
  vcn_id         = oci_core_vcn.hub_vcn.id
  display_name   = var.hub_mgmt_route_table_display_name
  route_rules {
    #Required
    network_entity_id = oci_core_nat_gateway.hub_nat_gateway.id
    destination       = "0.0.0.0/0"
  }
  #  route_rules {
  #    network_entity_id = oci_core_drg.drg.id
  #    destination       = var.hub_vcn_cidr_blocks
  #  }
  defined_tags = {
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "hub",
  }
}

resource "oci_core_route_table" "hub_trt_route_table" {
  #Required
  compartment_id = oci_identity_compartment.hub_network_compartment.id
  vcn_id         = oci_core_vcn.hub_vcn.id
  display_name   = var.hub_trt_route_table_display_name
  route_rules {
    #Required
    network_entity_id = oci_core_nat_gateway.hub_nat_gateway.id
    destination       = "0.0.0.0/0"
  }
  defined_tags = {
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "hub",
  }

}

resource "oci_core_route_table" "hub_untrt_route_table" {
  #Required
  compartment_id = oci_identity_compartment.hub_network_compartment.id
  vcn_id         = oci_core_vcn.hub_vcn.id
  display_name   = var.hub_untrt_route_table_display_name
  route_rules {
    #Required
    network_entity_id = oci_core_nat_gateway.hub_nat_gateway.id
    destination       = "0.0.0.0/0"
  }
  defined_tags = {
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "hub",
  }

}

# -----------------------------------------------------------------------------
#                               PROD ROUTE TABLE                               #
# -----------------------------------------------------------------------------

resource "oci_core_route_table" "prod_app_route_table" {
  #Required
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_app_route_table_display_name
  route_rules {
    #Required
    network_entity_id = oci_core_drg.drg.id
    destination       = var.prod_drg_rt_cidr
  }
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "app",
  }

}

resource "oci_core_route_table" "prod_db_route_table" {
  #Required
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_db_route_table_display_name
  route_rules {
    #Required
    network_entity_id = oci_core_drg.drg.id
    destination       = var.prod_drg_rt_cidr
  }
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "db",
  }

}

resource "oci_core_route_table" "prod_pvt_lb_route_table" {
  #Required
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_pvt_lb_route_table_display_name
  route_rules {
    #Required
    network_entity_id = oci_core_drg.drg.id
    destination       = var.prod_drg_rt_cidr
  }
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "lb",
  }

}

resource "oci_core_route_table" "prod_pub_lb_route_table" {
  #Required
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_pub_lb_route_table_display_name
  route_rules {
    #Required
    network_entity_id = oci_core_drg.drg.id
    destination       = var.prod_drg_rt_cidr
  }
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "lb",
  }
}

resource "oci_core_route_table" "prod_exa_route_table" {
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_exa_route_table_display_name
  route_rules {
    network_entity_id = oci_core_drg.drg.id
    destination       = var.prod_drg_rt_cidr
  }
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "exa",
  }

}

resource "oci_core_route_table" "prod_dmz_route_table" {
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_dmz_route_table_display_name
  route_rules {
    network_entity_id = oci_core_drg.drg.id
    destination       = var.prod_drg_rt_cidr
  }
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "dmz",
  }

}


# -----------------------------------------------------------------------------
#                              NON PROD ROUTE TABLE                           #
# -----------------------------------------------------------------------------

resource "oci_core_route_table" "non_prod_app_route_table" {
  provider       = oci.non_prod_reg
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_app_route_table_display_name
  route_rules {
    network_entity_id = oci_core_nat_gateway.non_prod_nat_gateway.id
    destination       = "0.0.0.0/0"
  }
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "app",
  }
}

resource "oci_core_route_table" "non_prod_db_route_table" {
  provider       = oci.non_prod_reg
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_db_route_table_display_name
  route_rules {
    network_entity_id = oci_core_nat_gateway.non_prod_nat_gateway.id
    destination       = "0.0.0.0/0"
  }
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "db",
  }
}

resource "oci_core_route_table" "non_prod_pvt_lb_route_table" {
  provider       = oci.non_prod_reg
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_pvt_lb_route_table_display_name
  route_rules {
    network_entity_id = oci_core_nat_gateway.non_prod_nat_gateway.id
    destination       = "0.0.0.0/0"
  }
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "lb",
  }
}

resource "oci_core_route_table" "non_prod_pub_lb_route_table" {
  provider       = oci.non_prod_reg
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_pub_lb_route_table_display_name
  route_rules {
    network_entity_id = oci_core_nat_gateway.non_prod_nat_gateway.id
    destination       = "0.0.0.0/0"
  }
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "lb",
  }

}

resource "oci_core_route_table" "non_prod_exa_route_table" {
  provider       = oci.non_prod_reg
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_exa_route_table_display_name
  route_rules {
    network_entity_id = oci_core_nat_gateway.non_prod_nat_gateway.id
    destination       = "0.0.0.0/0"
  }
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "exa",
  }

}

resource "oci_core_route_table" "non_prod_dmz_route_table" {
  provider       = oci.non_prod_reg
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_dmz_route_table_display_name
  route_rules {
    network_entity_id = oci_core_nat_gateway.non_prod_nat_gateway.id
    destination       = "0.0.0.0/0"
  }
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "dmz",
  }

}
