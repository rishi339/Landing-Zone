 #-----------------------------------------------------------------------------
 #                          Authentication Variables
 #-----------------------------------------------------------------------------

tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaavq7mli6vqbhibwzbkywghhu7v233cjudlejd5jgyqwsdsuen77ba"
user_ocid        = "ocid1.user.oc1..aaaaaaaakt5v4gpp36q734qbqtcv4qhkn2nlecjtj6vw6hzdzipplwxn3aqq"
fingerprint      = "8a:1b:81:cf:5a:d6:72:34:f7:f6:67:40:e1:04:ca:fc"
private_key_path = "/INFRA/TGE/private_key"
prod_region      = "us-ashburn-1"

 #-----------------------------------------------------------------------------
#                           COMPARTMENT Variables
 #-----------------------------------------------------------------------------

home_compartment_name = "HOME_COMP"

prod_environment_compartment_name = "A1-OCI-ASH-P-CMP"
prod_network_compartment_name     = "A1-OCI-ASH-P-NW-CMP"
prod_security_compartment_name    = "A1-OCI-ASH-P-SC-CMP"
prod_application_compartment_name = "A1-OCI-ASH-P-AP-CMP"
prod_database_compartment_name    = "A1-OCI-ASH-P-DB-CMP"

non_prod_environment_compartment_name = "A1-OCI-PHX-NP-PHX"
non_prod_network_compartment_name     = "A1-OCI-PHX-NP-NW-CMP"
non_prod_security_compartment_name    = "A1-OCI-PHX-NP-SC-CMP"
non_prod_application_compartment_name = "A1-OCI-PHX-NP-AP-CMP"
non_prod_database_compartment_name    = "A1-OCI-PHX-NP-DB-CMP"

hub_compartment_name = "A1-OCI-ASH-H-CMP"
hub_management_compartment_name = "A1-OCI-ASH-H-MGMT-CMP"
hub_security_compartment_name = "A1-OCI-ASH-H-SC-CMP"
hub_network_compartment_name  = "A1-OCI-ASH-H-NW-CMP"

 #-----------------------------------------------------------------------------
#                           DRG Variables for Hub and Prod
 #-----------------------------------------------------------------------------

drg_display_name                                                           = "A1-OCI-ASH-DRG"
hub_drg_attachment_display_name                                            = "drg-hub-attachment"
prod_drg_attachment_display_name                                           = "drg-prod-attachment"
drg_attachment_network_details_type                                        = "VCN"
drg_route_distribution_distribution_type                                   = "IMPORT"
drg_route_distribution_display_name                                        = "DRG-RT-DIS-ASH"
drg_route_distribution_statement_statements_action                         = "ACCEPT"
drg_route_distribution_statement_statements_match_criteria_match_type      = "DRG_ATTACHMENT_TYPE"
drg_route_distribution_statement_statements_match_criteria_attachment_type = "VCN"

 #-----------------------------------------------------------------------------
 #                          DRG Variables for Hub and Non-Prod
 #-----------------------------------------------------------------------------

np_drg_display_name                                                           = "A1-OCI-PHX-DRG"
non_prod_drg_attachment_display_name                                          = "drg-non-prod-attachment"
np_drg_attachment_network_details_type                                        = "VCN"
np_drg_route_distribution_distribution_type                                   = "IMPORT"
np_drg_route_distribution_display_name                                        = "DRG-RT-DIS-PHX"
np_drg_route_distribution_statement_statements_action                         = "ACCEPT"
np_drg_route_distribution_statement_statements_match_criteria_match_type      = "DRG_ATTACHMENT_TYPE"
np_drg_route_distribution_statement_statements_match_criteria_attachment_type = "VCN"
np_drg_route_distribution_statement_statements_priority                       = "1"

 #-----------------------------------------------------------------------------
 #                         HUB Variables
 #-----------------------------------------------------------------------------

hub_vcn_cidr_blocks  = ["10.0.0.0/24"]
hub_vcn_display_name = "A1-OCI-ASH-H-VCN"

 #--------------------------HUB Gateway Variables------------------------------
hub_internet_gateway_enabled      = true
hub_internet_gateway_display_name = "A1-OCI-ASH-H-VCN-IGW"
hub_nat_gateway_display_name      = "A1-OCI-ASH-H-VCN-NAT"
hub_service_gateway_display_name  = "A1-OCI-ASH-H-VCN-SGW"

# ---------------------HUB Management Subnet Variables-------------------------

#hub_mgmt_subnet_cidr_block                 = "10.0.0.128/26"
#hub_mgmt_subnet_display_name               = "sub-mgmt-hub-iad"
#hub_mgmt_subnet_prohibit_public_ip_on_vnic = true
#hub_mgmt_security_list_display_name        = "sl-mgmt-hub-iad"
#hub_mgmt_route_table_display_name          = "rt-mgmt-hub-iad"


 #-----------------------HUB Trusted Subnet Variables--------------------------

hub_trt_subnet_cidr_block                 = "10.0.0.0/26"
hub_trt_subnet_display_name               = "A1-OCI-ASH-H-SN-TRST"
hub_trt_subnet_prohibit_public_ip_on_vnic = true
hub_trt_security_list_display_name        = "A1-OCI-ASH-H-SL-TRST"
hub_trt_route_table_display_name          = "A1-OCI-ASH-H-RT-TRST"

 #--------------------HUB Un-Trusted Subnet Variables--------------------------

hub_untrt_subnet_cidr_block                 = "10.0.0.64/26"
hub_untrt_subnet_display_name               = "A1-OCI-ASH-H-SN-UNTRST"
hub_untrt_subnet_prohibit_public_ip_on_vnic = true
hub_untrt_security_list_display_name        = "A1-OCI-ASH-H-SL-UNTRST"
hub_untrt_route_table_display_name          = "A1-OCI-ASH-H-RT-UNTRST"

 #-----------------------------------------------------------------------------
                           PROD Variables
 #-----------------------------------------------------------------------------

prod_drg_rt_cidr      = "10.0.0.0/16"
prod_vcn_cidr_blocks  = ["11.0.0.0/22"]
prod_vcn_display_name = "A1-OCI-ASH-P-VCN"

 #-------------------------Prod Gateway Variables------------------------------

prod_internet_gateway_enabled      = true
prod_internet_gateway_display_name = "A1-OCI-ASH-P-VCN-IGW"
prod_nat_gateway_display_name      = "A1-OCI-ASH-P-VCN-NAT"
prod_service_gateway_display_name  = "A1-OCI-ASH-P-VCN-SGW"

 #---------------------PROD APPLICATION Subnet Variables------------------------

prod_app_subnet_cidr_block                 = "11.0.0.0/25"
prod_app_subnet_display_name               = "A1-OCI-ASH-P-SN-APP"
prod_app_subnet_prohibit_public_ip_on_vnic = true
prod_app_security_list_display_name        = "A1-OCI-ASH-P-SL-APP"
prod_app_route_table_display_name          = "A1-OCI-ASH-P-RT-APP"

 #---------------------PROD DATABASE Subnet Variables------------------------

prod_db_subnet_cidr_block                 = "11.0.0.128/25"
prod_db_subnet_display_name               = "A1-OCI-ASH-P-SN-DB"
prod_db_subnet_prohibit_public_ip_on_vnic = true
prod_db_security_list_display_name        = "A1-OCI-ASH-P-SL-DB"
prod_db_route_table_display_name          = "A1-OCI-ASH-P-RT-DB"

 #---------------------PROD PRIVATE LB Subnet Variables------------------------

prod_pvt_lb_subnet_cidr_block                 = "11.0.1.0/25"
prod_pvt_lb_subnet_display_name               = "A1-OCI-ASH-P-SN-NW"
prod_pvt_lb_subnet_prohibit_public_ip_on_vnic = true
prod_pvt_lb_security_list_display_name        = "A1-OCI-ASH-P-SL-NW"
prod_pvt_lb_route_table_display_name          = "A1-OCI-ASH-P-RT-NW"

## ---------------------PROD PUBLIC LB Subnet Variables------------------------
#
#prod_pub_lb_subnet_cidr_block                 = "11.0.1.128/25"
#prod_pub_lb_subnet_display_name               = "sub-pub-lb-prod-iad"
#prod_pub_lb_subnet_prohibit_public_ip_on_vnic = true
#prod_pub_lb_security_list_display_name        = "sl-pub-lb-prod-iad"
#prod_pub_lb_route_table_display_name          = "rt-pub-lb-prod-iad"
#
## ---------------------PROD EXADATA Subnet Variables------------------------
#
#prod_exa_subnet_cidr_block                 = "11.0.2.0/25"
#prod_exa_subnet_display_name               = "sub-exa-prod-iad"
#prod_exa_subnet_prohibit_public_ip_on_vnic = true
#prod_exa_security_list_display_name        = "sl-exa-prod-iad"
#prod_exa_route_table_display_name          = "rt-exa-prod-iad"
#
## -----------------------PROD DMZ Subnet Variables--------------------------
#
#prod_dmz_subnet_cidr_block                 = "11.0.2.128/25"
#prod_dmz_subnet_display_name               = "sub-dmz-prod-iad"
#prod_dmz_subnet_prohibit_public_ip_on_vnic = true
#prod_dmz_security_list_display_name        = "sl-dmz-prod-sub-iad"
#prod_dmz_route_table_display_name          = "rt-dmz-prod-sub-iad"

 #-----------------------------------------------------------------------------
 #                         NON PROD Variables
 #-----------------------------------------------------------------------------

non_prod_vcn_cidr_blocks  = ["12.0.0.0/22"]
non_prod_vcn_display_name = "A1-OCI-PHX-NP-VCN"

 #-------------------------Non-Prod Gateway Variables------------------------------

non_prod_internet_gateway_enabled      = true
non_prod_internet_gateway_display_name = "A1-OCI-PHX-NP-VCN-IGW"
non_prod_nat_gateway_display_name      = "A1-OCI-PHX-NP-VCN-NAT"
non_prod_service_gateway_display_name  = "A1-OCI-PHX-NP-VCN-SGW"

 #---------------------NON-PROD APPLICATION Subnet Variables------------------------

non_prod_app_subnet_cidr_block                 = "12.0.0.0/25"
non_prod_app_subnet_display_name               = "A1-OCI-PHX-NP-SN-APP"
non_prod_app_subnet_prohibit_public_ip_on_vnic = true
non_prod_app_security_list_display_name        = "A1-OCI-PHX-NP-SL-APP"
non_prod_app_route_table_display_name          = "A1-OCI-PHX-NP-RT-APP"

 #---------------------NON-PROD DATABASE Subnet Variables------------------------

non_prod_db_subnet_cidr_block                 = "12.0.0.128/25"
non_prod_db_subnet_display_name               = "A1-OCI-PHX-NP-SN-DB"
non_prod_db_subnet_prohibit_public_ip_on_vnic = true
non_prod_db_security_list_display_name        = "A1-OCI-PHX-NP-SL-DB"
non_prod_db_route_table_display_name          = "A1-OCI-PHX-NP-RT-DB"

 #---------------------NON-PROD PRIVATE LB Subnet Variables------------------------

non_prod_pvt_lb_subnet_cidr_block                 = "12.0.1.0/25"
non_prod_pvt_lb_subnet_display_name               = "A1-OCI-PHX-NP-SN-NW"
non_prod_pvt_lb_subnet_prohibit_public_ip_on_vnic = true
non_prod_pvt_lb_security_list_display_name        = "A1-OCI-PHX-NP-SL-NW"
non_prod_pvt_lb_route_table_display_name          = "A1-OCI-PHX-NP-RT-NW"

# ---------------------NON-PROD PUBLIC LB Subnet Variables------------------------

#non_prod_pub_lb_subnet_cidr_block                 = "12.0.1.128/25"
#non_prod_pub_lb_subnet_display_name               = "sub-pub-lb-non-prod-phx"
#non_prod_pub_lb_subnet_prohibit_public_ip_on_vnic = true
#non_prod_pub_lb_security_list_display_name        = "sl-pub-lb-non-prod-phx"
#non_prod_pub_lb_route_table_display_name          = "rt-pub-lb-non-prod-phx"

# ---------------------NON-PROD EXADATA Subnet Variables------------------------

#non_prod_exa_subnet_cidr_block                 = "12.0.2.0/25"
#non_prod_exa_subnet_display_name               = "sub-exa-non-prod-phx"
#non_prod_exa_subnet_prohibit_public_ip_on_vnic = true
#non_prod_exa_security_list_display_name        = "sl-exa-non-prod-phx"
#non_prod_exa_route_table_display_name          = "rt-exa-non-prod-phx"

# -----------------------NON-PROD DMZ Subnet Variables--------------------------

#non_prod_dmz_subnet_cidr_block                 = "12.0.2.128/25"
#non_prod_dmz_subnet_display_name               = "sub-dmz-non-prod-phx"
#non_prod_dmz_subnet_prohibit_public_ip_on_vnic = true
#non_prod_dmz_security_list_display_name        = "sl-dmz-non-prod-phx"
#non_prod_dmz_route_table_display_name          = "rt-dmz-non-prod-phx"

 #-----------------------------------------------------------------------------
 #				BASTION
 #-----------------------------------------------------------------------------

bastion_client_cidr_block_allow_list = ["0.0.0.0/0"]
bastion_name                         = "BASTION_SERVER"

 #-----------------------------------------------------------------------------
 #				IAM
 #-----------------------------------------------------------------------------

app_admin_user_email = "appadmin@example.com"
db_admin_user_email  = "dbadmin@example.com"
net_admin_user_email = "netadmin@example.com"
sec_admin_user_email = "secadmin@example.com"

 #-----------------------------------------------------------------------------
# 				Alarms
 #-----------------------------------------------------------------------------

endpoint                        = "gaurav.shirsathe@infosys.com"
budget_notification_topic_name  = "budget_topic"
iam_notification_topic_name     = "iam_topic"
compute_notification_topic_name = "compute_topic"
alarm_namespace                 = "oci_computeagent"
alarm_query                     = "CpuUtilization[1m].mean() > 80"



 #-----------------------------------------------------------------------------
# 			VSS Host Scan Recipe Variables
 #-----------------------------------------------------------------------------

host_scan_recipe_agent_settings_scan_level                                            = "STANDARD"
host_scan_recipe_port_settings_scan_level                                             = "STANDARD"
host_scan_recipe_agent_settings_agent_configuration_vendor                            = "OCI"
host_scan_recipe_agent_settings_agent_configuration_cis_benchmark_settings_scan_level = "NONE"
host_scan_recipe_schedule_type                                                        = "DAILY"
host_scan_target_description                                                          = "SCANNING TARGET"
host_scan_target_display_name                                                         = "VSS-SCANNING-TARGET"


 #-----------------------------------------------------------------------------
#				 Cloud Guard
 #-----------------------------------------------------------------------------

cloud_guard_configuration_reporting_region = "us-ashburn-1"
cloud_guard_configuration_status           = "ENABLED"
