
# -----------------------------------------------------------------------------
# VSS Host Scan Recipe
# -----------------------------------------------------------------------------

resource "oci_vulnerability_scanning_host_scan_recipe" "test_host_scan_recipe" {
  #Required
  agent_settings {
    #Required
    scan_level = var.host_scan_recipe_agent_settings_scan_level

    #Optional
    agent_configuration {
      #Required
      vendor = var.host_scan_recipe_agent_settings_agent_configuration_vendor

      #Optional
      cis_benchmark_settings {

        #Optional
        scan_level = var.host_scan_recipe_agent_settings_agent_configuration_cis_benchmark_settings_scan_level
      }
    }
  }
  compartment_id = oci_identity_compartment.home_compartment.id
  port_settings {
    #Required
    scan_level = var.host_scan_recipe_port_settings_scan_level
  }
  schedule {
    #Required
    type = var.host_scan_recipe_schedule_type
  }
}

# -----------------------------------------------------------------------------
# VSS Host Scan Target
# -----------------------------------------------------------------------------

resource "oci_vulnerability_scanning_host_scan_target" "test_host_scan_target" {
  #Required
  compartment_id        = oci_identity_compartment.home_compartment.id
  host_scan_recipe_id   = oci_vulnerability_scanning_host_scan_recipe.test_host_scan_recipe.id
  target_compartment_id = oci_identity_compartment.home_compartment.id
}
