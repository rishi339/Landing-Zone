# -----------------------------------------------------------------------------
#                                     IAM POLICY
# -----------------------------------------------------------------------------

variable "app_policy_name" {
  type    = string
  default = "APP-POLICY"
}

variable "db_policy_name" {
  type    = string
  default = "DB-POLICY"
}

variable "net_policy_name" {
  type    = string
  default = "NET-POLICY"

}

variable "sec_policy_name" {
  type    = string
  default = "SEC-POLICY"
}

# -----------------------------------------------------------------------------
#                           IAM GROUPS
# -----------------------------------------------------------------------------

variable "app_admin_group_name" {
  type    = string
  default = "app_admin_grp"
}

variable "db_admin_group_name" {
  type    = string
  default = "db_admin_grp"
}

variable "net_admin_group_name" {
  type    = string
  default = "net_admin_grp"
}

variable "sec_admin_group_name" {
  type    = string
  default = "sec_admin_grp"
}

# -----------------------------------------------------------------------------
#                           IAM USERS
# -----------------------------------------------------------------------------

variable "app_admin_user_name" {
  type    = string
  default = "app_admin"
}

variable "app_admin_user_email" {
  type = string
}

variable "db_admin_user_name" {
  type    = string
  default = "db_admin"
}

variable "db_admin_user_email" {
  type = string
}

variable "net_admin_user_name" {
  type    = string
  default = "net_admin"
}

variable "net_admin_user_email" {
  type = string
}

variable "sec_admin_user_name" {
  type    = string
  default = "sec-admin"
}

variable "sec_admin_user_email" {
  type = string
}

# -----------------------------------------------------------------------------
# BASTION
# -----------------------------------------------------------------------------

variable "bastion_bastion_type" {
  type        = string
  description = "Bastion Type"
  default = "STANDARD"
}

variable "bastion_client_cidr_block_allow_list" {
  type        = list(string)
  description = "Bastion Client CIDR list to be allowed"
}

variable "bastion_max_session_ttl_in_seconds" {
  type        = number
  description = "Time to live in seconds"
  default = 1800
}

variable "bastion_name" {
  type = string
}

# -----------------------------------------------------------------------------
#                    Notification Subscription and Topics
# -----------------------------------------------------------------------------

variable "endpoint" {
  type = string
}

variable "budget_notification_topic_name" {
  type = string
}

variable "budget_topic_description" {
  type = string
  default = "Budget_demo_topic"
}

variable "budget_rule_condition" {
  type    = string
  default = "eventType"
}

variable "iam_notification_topic_name" {
  type = string
}

variable "iam_topic_description" {
  type = string
  default = "iam_demo_topic"
}

variable "iam_rule_condition" {
  type    = string
  default = "eventType"
}

variable "compute_notification_topic_name" {
  type = string
}

variable "compute_topic_description" {
  type    = string
  default = "compute_demo_topic"
}

variable "alarm_display_name" {
  type    = string
  default = "compute_demo_alarm"
}

variable "alarm_is_enabled" {
  type    = bool
  default = true
}

variable "alarm_namespace" {
  type = string
}

variable "alarm_query" {
  type = string
}

variable "alarm_severity" {
  type    = string
  default = "critical"
}

variable "alarm_body" {
  type    = string
  default = "This is alarm"
}





# ----------------------------------------------------------------------------
#                   VSS
# -----------------------------------------------------------------------------

variable "test_compartment_id" {
  type        = string
  description = "The OCID of the compartment for which the scan recipe will be applicable."
  default     = ""
}

variable "host_scan_recipe_agent_settings_scan_level" {
  type        = string
  description = "Vulnerability scanning service agent scan level"
}

variable "host_scan_recipe_agent_settings_agent_configuration_vendor" {
  type        = string
  description = "Vulnerability scanning service agent configuration vendor"
}

variable "host_scan_recipe_agent_settings_agent_configuration_cis_benchmark_settings_scan_level" {
  type        = string
  description = "Vulnerability scanning service CIS benchmark scan level"
}

variable "host_scan_recipe_port_settings_scan_level" {
  type        = string
  description = "Vulnerability scanning service Port scan level"
}

variable "host_scan_recipe_schedule_type" {
  type        = string
  description = "Vulnerability scanning service Schedule type for host scanning"
}

variable "host_scan_target_description" {
  type        = string
  description = "Vulnerability scanning service scanning target description"
}

variable "host_scan_target_display_name" {
  type        = string
  description = "Vulnerability scanning service scanning target display name"
}


# ----------------------------------------------------------------------------
#                   Cloud Guard
# -----------------------------------------------------------------------------

variable "cloud_guard_configuration_reporting_region" {
  type        = string
  description = "Cloud Guard configuration reporting region"
}

variable "cloud_guard_configuration_status" {
  type        = string
  description = "Cloud Guard configuration status"
}

#variable "detector_recipe_display_name" {
#  type        = string
#  description = "Cloud Guard detector recipe display name"
#}
