# -----------------------------------------------------------------------------
#                               COMPARTMENT                                   #
# -----------------------------------------------------------------------------

resource "oci_identity_compartment" "home_compartment" {
  compartment_id = var.tenancy_ocid
  name           = var.home_compartment_name
  description    = "OCI Parent Compartment"
  enable_delete  = var.enable_compartment_delete
}

# -----------------------------------------------------------------------------
#                            PRODUCTION COMPARTMENT                            #
# -----------------------------------------------------------------------------

resource "oci_identity_compartment" "prod_environment_compartment" {

  compartment_id = oci_identity_compartment.home_compartment.id
  name           = var.prod_environment_compartment_name
  description    = "Production Environment Compartment"
  enable_delete  = var.enable_compartment_delete
  defined_tags = {
    "tag-oci.tag-key-env" = "prod",
  }
}

resource "oci_identity_compartment" "prod_network_compartment" {

  compartment_id = oci_identity_compartment.prod_environment_compartment.id
  name           = var.prod_network_compartment_name
  description    = "Production Network Compartment"
  enable_delete  = var.enable_compartment_delete
  defined_tags = {
    "tag-oci.tag-key-env" = "prod",
  }

}

resource "oci_identity_compartment" "prod_security_compartment" {

  compartment_id = oci_identity_compartment.prod_environment_compartment.id
  name           = var.prod_security_compartment_name
  description    = "Production Security Compartment"
  enable_delete  = var.enable_compartment_delete
  defined_tags = {
    "tag-oci.tag-key-env" = "prod",
  }

}

resource "oci_identity_compartment" "prod_application_compartment" {
  compartment_id = oci_identity_compartment.prod_environment_compartment.id
  name           = var.prod_application_compartment_name
  description    = "Production Application Compartment"
  enable_delete  = var.enable_compartment_delete
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-stack" = "app",
  }
}

resource "oci_identity_compartment" "prod_database_compartment" {

  compartment_id = oci_identity_compartment.prod_environment_compartment.id
  name           = var.prod_database_compartment_name
  description    = "Production Database Compartment"
  enable_delete  = var.enable_compartment_delete
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-stack" = "db",
  }
}

# -----------------------------------------------------------------------------
#                            NON PRODUCTION COMPARTMENT                       #
# -----------------------------------------------------------------------------

resource "oci_identity_compartment" "non_prod_environment_compartment" {

  compartment_id = oci_identity_compartment.home_compartment.id
  name           = var.non_prod_environment_compartment_name
  description    = "Production Environment Compartment"
  enable_delete  = var.enable_compartment_delete
  defined_tags = {
    "tag-oci.tag-key-env" = "non-prod",
  }

}

resource "oci_identity_compartment" "non_prod_network_compartment" {

  compartment_id = oci_identity_compartment.non_prod_environment_compartment.id
  name           = var.non_prod_network_compartment_name
  description    = "Production Network Compartment"
  enable_delete  = var.enable_compartment_delete
  defined_tags = {
    "tag-oci.tag-key-env" = "non-prod",
  }

}

resource "oci_identity_compartment" "non_prod_security_compartment" {

  compartment_id = oci_identity_compartment.non_prod_environment_compartment.id
  name           = var.non_prod_security_compartment_name
  description    = "Production Security Compartment"
  enable_delete  = var.enable_compartment_delete
  defined_tags = {
    "tag-oci.tag-key-env" = "non-prod",
  }

}

resource "oci_identity_compartment" "non_prod_application_compartment" {
  compartment_id = oci_identity_compartment.non_prod_environment_compartment.id
  name           = var.non_prod_application_compartment_name
  description    = "Production Application Compartment"
  enable_delete  = var.enable_compartment_delete
  defined_tags = {
    "tag-oci.tag-key-env"   = "non-prod",
    "tag-oci.tag-key-stack" = "app",
  }

}

resource "oci_identity_compartment" "non_prod_database_compartment" {

  compartment_id = oci_identity_compartment.non_prod_environment_compartment.id
  name           = var.non_prod_database_compartment_name
  description    = "Production Database Compartment"
  enable_delete  = var.enable_compartment_delete
  defined_tags = {
    "tag-oci.tag-key-env"   = "prod",
    "tag-oci.tag-key-stack" = "db",
  }

}

# -----------------------------------------------------------------------------
#                               HUB COMPARTMENT                                #
# -----------------------------------------------------------------------------

resource "oci_identity_compartment" "hub_compartment" {
  compartment_id = oci_identity_compartment.home_compartment.id
  name           = var.hub_compartment_name
  description    = "Hub Compartment"
  enable_delete  = var.enable_compartment_delete
  defined_tags = {
    "tag-oci.tag-key-stack" = "hub",
  }
}

resource "oci_identity_compartment" "hub_security_compartment" {

  compartment_id = oci_identity_compartment.hub_compartment.id
  name           = var.hub_security_compartment_name
  description    = "Hub Security Compartment"
  enable_delete  = var.enable_compartment_delete
  defined_tags = {
    "tag-oci.tag-key-stack" = "hub",
  }
}

resource "oci_identity_compartment" "hub_management_compartment" {

  compartment_id = oci_identity_compartment.hub_compartment.id
  name           = var.hub_management_compartment_name
  description    = "Hub Management Compartment"
  enable_delete  = var.enable_compartment_delete
  defined_tags = {
    "tag-oci.tag-key-stack" = "hub",
  }
}

resource "oci_identity_compartment" "hub_network_compartment" {

  compartment_id = oci_identity_compartment.hub_compartment.id
  name           = var.hub_network_compartment_name
  description    = "Hub Network Compartment"
  enable_delete  = var.enable_compartment_delete
  defined_tags = {
    "tag-oci.tag-key-stack" = "hub",
  }
}

