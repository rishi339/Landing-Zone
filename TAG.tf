resource "oci_identity_tag_namespace" "tag" {
  compartment_id = oci_identity_compartment.home_compartment.id
  description    = "Tagging Options"
  name           = "tag-oci"
  is_retired     = false
}

resource "oci_identity_tag" "tag-key-env" {
  description      = "To Identify Environment"
  name             = "tag-key-env"
  tag_namespace_id = oci_identity_tag_namespace.tag.id

  is_cost_tracking = false
  validator {
    validator_type = "ENUM"
    values         = ["prod", "non-prod"]
  }
  is_retired = false
}

resource "oci_identity_tag" "tag-key-reg" {
  description      = "To Identify Region"
  name             = "tag-key-reg"
  tag_namespace_id = oci_identity_tag_namespace.tag.id

  is_cost_tracking = false
  validator {
    validator_type = "ENUM"
    values         = ["ash", "phx"]
  }
  is_retired = false
}

resource "oci_identity_tag" "tag-key-stack" {
  description      = "Track Application and Database"
  name             = "tag-key-stack"
  tag_namespace_id = oci_identity_tag_namespace.tag.id

  is_cost_tracking = false
  validator {
    validator_type = "ENUM"
    values         = ["app", "db", "lb", "exa", "dmz", "hub"]
  }
  is_retired = false
}

