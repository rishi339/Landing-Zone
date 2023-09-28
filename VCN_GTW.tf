# -----------------------------------------------------------------------------
#                               GATEWAYS for HUB VCN                          #
# -----------------------------------------------------------------------------

resource "oci_core_service_gateway" "hub_service_gateway" {

  compartment_id = oci_identity_compartment.hub_network_compartment.id
  services {
    service_id = data.oci_core_services.services.services.0.id
  }
  vcn_id = oci_core_vcn.hub_vcn.id

  display_name = var.hub_service_gateway_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "hub",
  }
}
resource "oci_core_internet_gateway" "hub_internet_gateway" {

  compartment_id = oci_identity_compartment.hub_network_compartment.id
  vcn_id         = oci_core_vcn.hub_vcn.id

  enabled      = var.hub_internet_gateway_enabled
  display_name = var.hub_internet_gateway_display_name
}
resource "oci_core_nat_gateway" "hub_nat_gateway" {
  #Required
  compartment_id = oci_identity_compartment.hub_network_compartment.id
  vcn_id         = oci_core_vcn.hub_vcn.id
  display_name   = var.hub_nat_gateway_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "hub",
  }

}

# -----------------------------------------------------------------------------
#                               GATEWAYS for Prod VCN                         #
# -----------------------------------------------------------------------------

resource "oci_core_service_gateway" "prod_service_gateway" {

  compartment_id = oci_identity_compartment.prod_network_compartment.id
  services {
    service_id = data.oci_core_services.services.services.0.id
  }
  vcn_id = oci_core_vcn.prod_vcn.id

  display_name = var.prod_service_gateway_display_name
  defined_tags = {
    "tag-oci.tag-key-env" = "prod",
    "tag-oci.tag-key-reg" = "ash",
  }

}

resource "oci_core_internet_gateway" "prod_internet_gateway" {

  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id

  enabled      = var.prod_internet_gateway_enabled
  display_name = var.prod_internet_gateway_display_name
}

resource "oci_core_nat_gateway" "prod_nat_gateway" {
  #Required
  compartment_id = oci_identity_compartment.prod_network_compartment.id
  vcn_id         = oci_core_vcn.prod_vcn.id
  display_name   = var.prod_nat_gateway_display_name
  defined_tags = {
    "tag-oci.tag-key-env" = "prod",
    "tag-oci.tag-key-reg" = "ash",
  }

}

# -----------------------------------------------------------------------------
#                               GATEWAYS for NON Prod VCN                     #
# -----------------------------------------------------------------------------

resource "oci_core_service_gateway" "non_prod_service_gateway" {
  provider       = oci.non_prod_reg
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  services {
    service_id = data.oci_core_services.non_prod_services.services.0.id
  }
  vcn_id       = oci_core_vcn.non_prod_vcn.id
  display_name = var.non_prod_service_gateway_display_name
  defined_tags = {
    "tag-oci.tag-key-env" = "non-prod",
    "tag-oci.tag-key-reg" = "phx",
  }

}

resource "oci_core_internet_gateway" "non_prod_internet_gateway" {
  provider       = oci.non_prod_reg
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id

  enabled      = var.non_prod_internet_gateway_enabled
  display_name = var.non_prod_internet_gateway_display_name
  defined_tags = {
    "tag-oci.tag-key-env" = "non-prod",
    "tag-oci.tag-key-reg" = "phx",
  }

}

resource "oci_core_nat_gateway" "non_prod_nat_gateway" {
  #Required
  provider       = oci.non_prod_reg
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  vcn_id         = oci_core_vcn.non_prod_vcn.id
  display_name   = var.non_prod_nat_gateway_display_name
  defined_tags = {
    "tag-oci.tag-key-env" = "non-prod",
    "tag-oci.tag-key-reg" = "phx",
  }

}
