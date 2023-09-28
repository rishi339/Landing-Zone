terraform {
  required_version = ">= 1.0.0"

  required_providers {
    oci = {
      source                = "oracle/oci"
      version               = "4.119.0" # October 05, 2022 Release
      configuration_aliases = [oci.non_prod_reg]
    }
  }
}

provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.prod_region
}

provider "oci" {
  alias            = "non_prod_reg"
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.non_prod_region
}

