# -----------------------------------------------------------------------------
#                               SECURITY LISTS for Hub VCN                    #
# -----------------------------------------------------------------------------

resource "oci_core_security_list" "hub_mgmt_security_list" {
  #Required
  compartment_id = oci_identity_compartment.hub_network_compartment.id
  vcn_id         = oci_core_vcn.hub_vcn.id
  display_name   = var.hub_mgmt_security_list_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "hub",
  }
}

resource "oci_core_security_list" "hub_trt_security_list" {
  #Required
  compartment_id = oci_identity_compartment.hub_network_compartment.id
  vcn_id         = oci_core_vcn.hub_vcn.id
  display_name   = var.hub_trt_security_list_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "hub",
  }

}

resource "oci_core_security_list" "hub_untrt_security_list" {
  #Required
  compartment_id = oci_identity_compartment.hub_network_compartment.id
  vcn_id         = oci_core_vcn.hub_vcn.id
  display_name   = var.hub_untrt_security_list_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "hub",
  }

}

# -----------------------------------------------------------------------------
#                               SECURITY LISTS for Prod VCN                   #
# -----------------------------------------------------------------------------

resource "oci_core_security_list" "prod_app_security_list" {
  #Required
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_app_security_list_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "app",
  }

}

resource "oci_core_security_list" "prod_db_security_list" {
  #Required
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_db_security_list_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "db",
  }

}

resource "oci_core_security_list" "prod_pvt_lb_security_list" {
  #Required
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_pvt_lb_security_list_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "lb",
  }
}

resource "oci_core_security_list" "prod_pub_lb_security_list" {
  #Required
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_pub_lb_security_list_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "lb",
  }

}

resource "oci_core_security_list" "prod_exa_security_list" {
  #Required
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_exa_security_list_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "exa",
  }

}

resource "oci_core_security_list" "prod_dmz_security_list" {
  #Required
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_dmz_security_list_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "dmz",
  }

}

# -----------------------------------------------------------------------------
#                           SECURITY LISTS for NON PROD VCN                   #
# -----------------------------------------------------------------------------

resource "oci_core_security_list" "non_prod_app_security_list" {
  #Required
  provider       = oci.non_prod_reg
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_app_security_list_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "app",
  }
}

resource "oci_core_security_list" "non_prod_db_security_list" {
  #Required
  provider       = oci.non_prod_reg
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_db_security_list_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "db",
  }
}

resource "oci_core_security_list" "non_prod_pvt_lb_security_list" {
  #Required
  provider       = oci.non_prod_reg
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_pvt_lb_security_list_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "lb",
  }
}

resource "oci_core_security_list" "non_prod_pub_lb_security_list" {
  #Required
  provider       = oci.non_prod_reg
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_pub_lb_security_list_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "lb",
  }
}

resource "oci_core_security_list" "non_prod_exa_security_list" {
  #Required
  provider       = oci.non_prod_reg
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_exa_security_list_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "exa",
  }
}

resource "oci_core_security_list" "non_prod_dmz_security_list" {
  #Required
  provider       = oci.non_prod_reg
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_dmz_security_list_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-reg"   = "phx",
    "tag-oci.tag-key-stack" = "dmz",
  }
}
