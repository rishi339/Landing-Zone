# -----------------------------------------------------------------------------
#                             Notification Subscription
# -----------------------------------------------------------------------------

resource "oci_ons_subscription" "budget_subscription_service" {
  compartment_id = oci_identity_compartment.prod_security_compartment.id
  endpoint       = var.endpoint
  protocol       = "EMAIL"
  topic_id       = oci_ons_notification_topic.budget_notification_topic.id
}

resource "oci_ons_subscription" "iam_subscription_service" {
  compartment_id = oci_identity_compartment.prod_security_compartment.id
  endpoint       = var.endpoint
  protocol       = "EMAIL"
  topic_id       = oci_ons_notification_topic.iam_notification_topic.id
}

resource "oci_ons_subscription" "compute_subscription_service" {
  compartment_id = oci_identity_compartment.prod_security_compartment.id
  endpoint       = var.endpoint
  protocol       = "EMAIL"
  topic_id       = oci_ons_notification_topic.compute_notification_topic.id
}


# -----------------------------------------------------------------------------
#                             Budget Topic
# -----------------------------------------------------------------------------

resource "oci_ons_notification_topic" "budget_notification_topic" {
  compartment_id = oci_identity_compartment.prod_security_compartment.id
  name           = var.budget_notification_topic_name
  description    = var.budget_topic_description
}

resource "oci_events_rule" "budget_rule" {
  actions {
    actions {
      action_type = "ONS"
      is_enabled  = "true"
      topic_id    = oci_ons_notification_topic.budget_notification_topic.id
    }
  }
  compartment_id = oci_identity_compartment.prod_security_compartment.id
  condition = jsonencode({
    "eventType" : ["com.oraclecloud.budgets.updatebudget", "com.oraclecloud.budgets.deletebudget", "com.oraclecloud.budgets.createbudget"]
  })
  display_name = "Budget_Rule"
  is_enabled   = "true"
  description  = "OCI Landing Zone Warning Budget Topic"
}

# -----------------------------------------------------------------------------
#                             IAM Topic
# -----------------------------------------------------------------------------

resource "oci_ons_notification_topic" "iam_notification_topic" {
  compartment_id = oci_identity_compartment.prod_security_compartment.id
  name           = var.iam_notification_topic_name
  description    = var.iam_topic_description
}

resource "oci_events_rule" "iam_rule" {
  actions {
    actions {
      action_type = "ONS"
      is_enabled  = "true"
      topic_id    = oci_ons_notification_topic.iam_notification_topic.id
    }
  }
  compartment_id = oci_identity_compartment.prod_security_compartment.id
  condition = jsonencode({
    "eventType" : ["com.oraclecloud.identitycontrolplane.addusertogroup",
      "com.oraclecloud.identitycontrolplane.creategroup",
      "com.oraclecloud.identitycontrolplane.deletegroup",
      "com.oraclecloud.identitycontrolplane.removeuserfromgroup",
      "com.oraclecloud.identitycontrolplane.updategroup",
      "com.oraclecloud.identitycontrolplane.createidentityprovider",
      "com.oraclecloud.identitycontrolplane.deleteidentityprovider",
      "com.oraclecloud.identitycontrolplane.updateidentityprovider",
      "com.oraclecloud.identitycontrolplane.createidpgroupmapping",
      "com.oraclecloud.identitycontrolplane.deleteidpgroupmapping",
      "com.oraclecloud.identitycontrolplane.updateidpgroupmapping",
      "com.oraclecloud.identitycontrolplane.createorresetmypasswordrequest",
      "com.oraclecloud.identitycontrolplane.createpolicy",
      "com.oraclecloud.identitycontrolplane.deletepolicy",
      "com.oraclecloud.identitycontrolplane.updatepolicy",
      "com.oraclecloud.identitycontrolplane.createuser",
      "com.oraclecloud.identitycontrolplane.deleteuser",
      "com.oraclecloud.identitycontrolplane.updateuser",
    "com.oraclecloud.identitycontrolplane.updateusercapabilities"]
  })
  display_name = "IAM_Rule"
  is_enabled   = "true"
  description  = "OCI Landing Zone Warning IAM Topic"
}


#-----------------------------------------------------------------------------
#                           Compute Topic
#----------------------------------------------------------------------------

resource "oci_ons_notification_topic" "compute_notification_topic" {
  compartment_id = oci_identity_compartment.prod_security_compartment.id
  name           = var.compute_notification_topic_name
  description    = var.compute_topic_description
}



#-----------------------------------------------------------------------------
#                             Announcement Subscription                            
#-----------------------------------------------------------------------------


resource "oci_announcements_service_announcement_subscription" "announcement_subscription" {
  compartment_id = oci_identity_compartment.prod_security_compartment.id
  display_name   = "Prod-Security-Critical-Announcement"
  ons_topic_id   = oci_ons_notification_topic.budget_notification_topic.id
}

#-----------------------------------------------------------------------------
#                             Alarms 
#-----------------------------------------------------------------------------


resource "oci_monitoring_alarm" "compute_test_alarm" {
  #Required
  compartment_id        = oci_identity_compartment.prod_security_compartment.id
  destinations          = [oci_ons_notification_topic.compute_notification_topic.id]
  display_name          = var.alarm_display_name
  is_enabled            = var.alarm_is_enabled
  metric_compartment_id = oci_identity_compartment.prod_security_compartment.id
  namespace             = var.alarm_namespace
  query                 = var.alarm_query
  severity              = var.alarm_severity

  #Optional
  body = var.alarm_body
  defined_tags = {
    "tag-oci.tag-key-env" = "non-prod",
    "tag-oci.tag-key-reg" = "phx",
  }
}
