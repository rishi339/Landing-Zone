# -----------------------------------------------------------------------------
#                               HUB VCN                                       #
# -----------------------------------------------------------------------------

resource "oci_core_vcn" "hub_vcn" {
  compartment_id = oci_identity_compartment.hub_network_compartment.id
  cidr_blocks    = var.hub_vcn_cidr_blocks
  display_name   = var.hub_vcn_display_name
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-reg"   = "ash",
    "tag-oci.tag-key-stack" = "hub",
  }
}

# -----------------------------------------------------------------------------
#                               PROD VCN                                      #
# -----------------------------------------------------------------------------

resource "oci_core_vcn" "prod_vcn" {

  compartment_id = oci_identity_compartment.prod_network_compartment.id
  cidr_blocks    = var.prod_vcn_cidr_blocks
  display_name   = var.prod_vcn_display_name
  defined_tags = {
    "tag-oci.tag-key-env" = "prod",
    "tag-oci.tag-key-reg" = "ash",
  }
}

# -----------------------------------------------------------------------------
#                             NON PROD VCN                                      #
# -----------------------------------------------------------------------------

resource "oci_core_vcn" "non_prod_vcn" {
  provider       = oci.non_prod_reg
  compartment_id = oci_identity_compartment.non_prod_network_compartment.id
  cidr_blocks    = var.non_prod_vcn_cidr_blocks
  display_name   = var.non_prod_vcn_display_name
  defined_tags = {
    "tag-oci.tag-key-env" = "non-prod",
    "tag-oci.tag-key-reg" = "phx",
  }
}
