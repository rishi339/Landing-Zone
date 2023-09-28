# -----------------------------------------------------------------------------
#                                   DRG                                       #
# -----------------------------------------------------------------------------

resource "oci_core_drg" "drg" {

  compartment_id = oci_identity_compartment.hub_network_compartment.id
  display_name   = var.drg_display_name
  defined_tags = {
    "tag-oci.tag-key-env" = "prod",
    "tag-oci.tag-key-reg" = "ash"
  }
}

# -----------------------------------------------------------------------------
#                             DRG ROUTE TABLE                                 #
# -----------------------------------------------------------------------------

resource "oci_core_drg_route_table" "drg_route_table" {
  #Required
  drg_id                           = oci_core_drg.drg.id
  import_drg_route_distribution_id = oci_core_drg_route_distribution.drg_route_distribution.id
  defined_tags = {
    "tag-oci.tag-key-env" = "prod",
    "tag-oci.tag-key-reg" = "ash"
  }
}

# -----------------------------------------------------------------------------
#                           HUB DRG ATTACHMENT                                #
# -----------------------------------------------------------------------------

resource "oci_core_drg_attachment" "hub_drg_attachment" {

  drg_id             = oci_core_drg.drg.id
  display_name       = var.hub_drg_attachment_display_name
  drg_route_table_id = oci_core_drg_route_table.drg_route_table.id
  defined_tags = {
    "tag-oci.tag-key-reg" = "ash"
  }
  network_details {
    #The type can be one of these values: IPSEC_TUNNEL, REMOTE_PEERING_CONNECTION, VCN, VIRTUAL_CIRCUIT
    id   = oci_core_vcn.hub_vcn.id
    type = var.drg_attachment_network_details_type
  }
}

# -----------------------------------------------------------------------------
#                          PROD DRG ATTACHMENT                                #
# -----------------------------------------------------------------------------

resource "oci_core_drg_attachment" "prod_drg_attachment" {

  drg_id             = oci_core_drg.drg.id
  display_name       = var.prod_drg_attachment_display_name
  drg_route_table_id = oci_core_drg_route_table.drg_route_table.id
  defined_tags = {
    "tag-oci.tag-key-env" = "prod",
    "tag-oci.tag-key-reg" = "ash"
  }
  network_details {
    #The type can be one of these values: IPSEC_TUNNEL, REMOTE_PEERING_CONNECTION, VCN, VIRTUAL_CIRCUIT
    id   = oci_core_vcn.prod_vcn.id
    type = var.drg_attachment_network_details_type
  }
}

# -----------------------------------------------------------------------------
#                          DRG ROUTE DISTRIBUTION                             #
# -----------------------------------------------------------------------------

resource "oci_core_drg_route_distribution" "drg_route_distribution" {
  #Required
  distribution_type = var.drg_route_distribution_distribution_type
  drg_id            = oci_core_drg.drg.id
  display_name      = var.drg_route_distribution_display_name
}


resource "oci_core_drg_route_distribution_statement" "drg_route_distribution_statement" {
  drg_route_distribution_id = oci_core_drg_route_distribution.drg_route_distribution.id
  action                    = var.drg_route_distribution_statement_statements_action

  match_criteria {
    match_type        = var.drg_route_distribution_statement_statements_match_criteria_match_type
    attachment_type   = var.drg_route_distribution_statement_statements_match_criteria_attachment_type
    drg_attachment_id = oci_core_drg_attachment.hub_drg_attachment.id

  }
  priority = var.drg_route_distribution_statement_statements_priority

}


# -----------------------------------------------------------------------------
#				NON-PROD DRG				      #
# -----------------------------------------------------------------------------

resource "oci_core_drg" "np_drg" {

  provider       = oci.non_prod_reg
  compartment_id = oci_identity_compartment.hub_network_compartment.id
  display_name   = var.np_drg_display_name
  defined_tags = {
    "tag-oci.tag-key-env" = "non-prod",
    "tag-oci.tag-key-reg" = "phx"
  }
}

# -----------------------------------------------------------------------------
#                          NON-PROD DRG ROUTE TABLE                           #
# -----------------------------------------------------------------------------

resource "oci_core_drg_route_table" "np_drg_route_table" {
  provider                         = oci.non_prod_reg
  drg_id                           = oci_core_drg.np_drg.id
  import_drg_route_distribution_id = oci_core_drg_route_distribution.np_drg_route_distribution.id
  defined_tags = {
    "tag-oci.tag-key-env" = "non-prod",
    "tag-oci.tag-key-reg" = "phx"
  }
}

# -----------------------------------------------------------------------------
#                          NON-PROD DRG ROUTE DISTRIBUTION                    #
# -----------------------------------------------------------------------------

resource "oci_core_drg_route_distribution" "np_drg_route_distribution" {
  provider          = oci.non_prod_reg
  distribution_type = var.np_drg_route_distribution_distribution_type
  drg_id            = oci_core_drg.np_drg.id
  display_name      = var.np_drg_route_distribution_display_name
}


resource "oci_core_drg_route_distribution_statement" "np_drg_route_distribution_statement" {
  provider                  = oci.non_prod_reg
  drg_route_distribution_id = oci_core_drg_route_distribution.np_drg_route_distribution.id
  action                    = var.np_drg_route_distribution_statement_statements_action

  match_criteria {
    match_type        = var.np_drg_route_distribution_statement_statements_match_criteria_match_type
    attachment_type   = var.np_drg_route_distribution_statement_statements_match_criteria_attachment_type
    drg_attachment_id = oci_core_drg_attachment.non_prod_drg_attachment.id

  }
  priority = var.np_drg_route_distribution_statement_statements_priority

}

# -----------------------------------------------------------------------------
#                         NON-PROD DRG ATTACHMENT                            #
# -----------------------------------------------------------------------------

resource "oci_core_drg_attachment" "non_prod_drg_attachment" {
  provider           = oci.non_prod_reg
  drg_id             = oci_core_drg.np_drg.id
  display_name       = var.non_prod_drg_attachment_display_name
  drg_route_table_id = oci_core_drg_route_table.np_drg_route_table.id
  defined_tags = {
    "tag-oci.tag-key-env" = "non-prod",
    "tag-oci.tag-key-reg" = "phx"
  }
  network_details {
    #The type can be one of these values: IPSEC_TUNNEL, REMOTE_PEERING_CONNECTION, VCN, VIRTUAL_CIRCUIT
    id   = oci_core_vcn.non_prod_vcn.id
    type = var.np_drg_attachment_network_details_type
  }
}

