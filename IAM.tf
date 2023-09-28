# -----------------------------------------------------------------------------
#                           IAM POLICY
# -----------------------------------------------------------------------------

resource "oci_identity_policy" "app_policy" {
  #  #Required
  compartment_id = oci_identity_compartment.hub_management_compartment.id
  description    = "Policy for Application Admin"
  name           = var.app_policy_name
  statements = [
    "Allow group 'Default'/'${oci_identity_group.app_admin_group.name}' to manage all-resources in compartment ${oci_identity_compartment.hub_management_compartment.name}"
  ]
}

resource "oci_identity_policy" "db_policy" {
  #  #Required
  compartment_id = oci_identity_compartment.hub_management_compartment.id
  description    = "Policy for Database Admin"
  name           = var.db_policy_name
  statements = [
    "Allow group 'Default'/'${oci_identity_group.db_admin_group.name}' to manage all-resources in compartment ${oci_identity_compartment.hub_management_compartment.name}"
  ]
}

resource "oci_identity_policy" "net_policy" {
  #  #Required
  compartment_id = oci_identity_compartment.hub_network_compartment.id
  description    = "Policy for Netwotk Admin"
  name           = var.net_policy_name
  statements = [
    "Allow group 'Default'/'${oci_identity_group.net_admin_group.name}' to manage all-resources in compartment ${oci_identity_compartment.hub_network_compartment.name}"
  ]
}

resource "oci_identity_policy" "sec_policy" {
  #Required
  compartment_id = oci_identity_compartment.hub_security_compartment.id
  description    = "Policy for Security Admin"
  name           = var.sec_policy_name
  statements = [
    "Allow group 'Default'/'${oci_identity_group.sec_admin_group.name}' to manage all-resources in compartment ${oci_identity_compartment.hub_security_compartment.name}",
  ]
}

# -----------------------------------------------------------------------------
#                           IAM GROUPS
# -----------------------------------------------------------------------------

resource "oci_identity_group" "app_admin_group" {
  compartment_id = var.tenancy_ocid
  description    = "IAM group for Application Admin"
  name           = var.app_admin_group_name
}

resource "oci_identity_group" "db_admin_group" {

  compartment_id = var.tenancy_ocid
  description    = "IAM group for Database Admin"
  name           = var.db_admin_group_name
}

resource "oci_identity_group" "net_admin_group" {
  compartment_id = var.tenancy_ocid
  description    = "IAM group for Network Admin"
  name           = var.net_admin_group_name
}

resource "oci_identity_group" "sec_admin_group" {
  compartment_id = var.tenancy_ocid
  description    = "IAM group for Security Admin"
  name           = var.sec_admin_group_name
}

# -----------------------------------------------------------------------------
#                           IAM USERS
# -----------------------------------------------------------------------------

resource "oci_identity_user" "app_admin" {
  compartment_id = var.tenancy_ocid
  description    = "IAM User for Application Admin"
  name           = var.app_admin_user_name
  email          = var.app_admin_user_email
}

resource "oci_identity_user" "db_admin" {
  compartment_id = var.tenancy_ocid
  description    = "IAM User for Database Admin"
  name           = var.db_admin_user_name
  email          = var.db_admin_user_email
}

resource "oci_identity_user" "net_admin" {
  compartment_id = var.tenancy_ocid
  description    = "IAM User for Network Admin"
  name           = var.net_admin_user_name
  email          = var.net_admin_user_email
}

resource "oci_identity_user" "sec_admin" {
  compartment_id = var.tenancy_ocid
  description    = "IAM User for Security Admin"
  name           = var.sec_admin_user_name
  email          = var.sec_admin_user_email
}
