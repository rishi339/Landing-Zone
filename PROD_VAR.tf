# -----------------------------------------------------------------------------
#                             PROD Compartment Variables
# -----------------------------------------------------------------------------

variable "home_compartment_name" {
  type        = string
  description = "OCI Parent Compartment"
}

variable "prod_environment_compartment_name" {
  type        = string
  description = "Production Compartment"
}

variable "prod_network_compartment_name" {
  type = string
}

variable "prod_security_compartment_name" {
  type = string
}

variable "prod_application_compartment_name" {
  type = string
}

variable "prod_database_compartment_name" {
  type = string
}

variable "hub_compartment_name" {
  type = string
}

variable "hub_management_compartment_name" {
  type = string
}

variable "hub_security_compartment_name" {
  type = string
}

variable "hub_network_compartment_name" {
  type = string
}

# -----------------------------------------------------------------------------
# 				PROD VCN Variables
# -----------------------------------------------------------------------------

variable "prod_vcn_cidr_blocks" {
  type        = list(string)
  description = "The CIDR value of your Prod VCN"

}

variable "prod_vcn_display_name" {
  type        = string
  description = "The Name of your Prod VCN"

}

# -----------------------------------------------------------------------------
# 		Application Subnet Variables for PROD VCN
# -----------------------------------------------------------------------------

variable "prod_app_subnet_cidr_block" {
  type        = string
  description = "CIDR values for Application Subnet in Prod VCN"
}

variable "prod_app_subnet_display_name" {
  type        = string
  description = "The Name of your App Subnet in Prod VCN"
}

variable "prod_app_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "True/False based on private/public subnet respectively for App subnet"
  default     = "true"
}

variable "prod_app_security_list_display_name" {
  type        = string
  description = "The Name of security list of App Subnet in Prod VCN"
}

# -----------------------------------------------------------------------------
# 		Database Subnet Variables for PROD VCN
# -----------------------------------------------------------------------------

variable "prod_db_subnet_cidr_block" {
  type        = string
  description = "CIDR values for Database Subnet in Prod VCN"
}

variable "prod_db_subnet_display_name" {
  type        = string
  description = "The Name of your Database Subnet in Prod VCN"
}


variable "prod_db_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "True/False based on private/public subnet respectively for Database subnet"
  default     = "true"
}

variable "prod_db_security_list_display_name" {
  type        = string
  description = "The Name of security list of Database Subnet in Prod VCN"
}

# -----------------------------------------------------------------------------
#		 Public Load Balancer Subnet Variables for PROD VCN
# -----------------------------------------------------------------------------

variable "prod_pub_lb_subnet_cidr_block" {
  type        = string
  description = "CIDR values for Public LB Subnet in Prod VCN"
}

variable "prod_pub_lb_subnet_display_name" {
  type        = string
  description = "The Name of your Public LB Subnet in Prod VCN"
}

variable "prod_pub_lb_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "True/False based on private/public subnet respectively for Public LB subnet"
  default     = "true"
}

variable "prod_pub_lb_security_list_display_name" {
  type        = string
  description = "The Name of security list of Public LB Subnet in Prod VCN"
}

# -----------------------------------------------------------------------------
#		 Private Load Balancer Subnet Variables for PROD VCN
# -----------------------------------------------------------------------------

variable "prod_pvt_lb_subnet_cidr_block" {
  type        = string
  description = "CIDR values for Private LB Subnet in Prod VCN"
}

variable "prod_pvt_lb_subnet_display_name" {
  type        = string
  description = "The Name of your Private LB Subnet in Prod VCN"
}

variable "prod_pvt_lb_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "True/False based on private/public subnet respectively for Private LB subnet"
  default     = "true"
}

variable "prod_pvt_lb_security_list_display_name" {
  type        = string
  description = "The Name of security list of Private LB Subnet in Prod VCN"
}

# -----------------------------------------------------------------------------
# 			DMZ Subnet Variables for PROD VCN
# -----------------------------------------------------------------------------

variable "prod_dmz_subnet_cidr_block" {
  type        = string
  description = "CIDR values for DMZ Subnet in Prod VCN"
}

variable "prod_dmz_subnet_display_name" {
  type        = string
  description = "The Name of your DMZ Subnet in Prod VCN"
}

variable "prod_dmz_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "True/False based on private/public subnet respectively for DMZ subnet"
  default     = "true"
}

variable "prod_dmz_security_list_display_name" {
  type        = string
  description = "The Name of security list of DMZ Subnet in Prod VCN"
}

# -----------------------------------------------------------------------------
# 		Application Subnet Variables for PROD VCN
# -----------------------------------------------------------------------------

variable "prod_exa_subnet_cidr_block" {
  type        = string
  description = "CIDR values for Exadata Subnet in Prod VCN"
}

variable "prod_exa_subnet_display_name" {
  type        = string
  description = "The Name of your Exadata Subnet in Prod VCN"
}

variable "prod_exa_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "True/False based on private/public subnet respectively for Exadata subnet"
  default     = "true"
}

variable "prod_exa_security_list_display_name" {
  type        = string
  description = "The Name of security list of App Subnet in Exadata VCN"
}

# -----------------------------------------------------------------------------
#				 HUB VCN Variables
# -----------------------------------------------------------------------------

variable "hub_vcn_cidr_blocks" {
  type        = list(string)
  description = "The CIDR value of your HUB VCN"
}

variable "hub_vcn_display_name" {
  type        = string
  description = "The Name of your HUB VCN"
}

# -----------------------------------------------------------------------------
# 				DRG Variables
# -----------------------------------------------------------------------------

variable "drg_display_name" {
  type        = string
  description = "The Name of your DRG"
}

variable "prod_drg_attachment_display_name" {
  type        = string
  description = "The name of DRG Attachment"
}

variable "hub_drg_attachment_display_name" {
  type        = string
  description = "The name of DRG Attachment"
}

variable "drg_attachment_network_details_type" {
  type        = string
  description = "The type can be one of these values: IPSEC_TUNNEL, REMOTE_PEERING_CONNECTION, VCN, VIRTUAL_CIRCUIT"
}

variable "prod_drg_rt_cidr" {
  type        = string
  description = "CIDR for Prod Routr Table Destination"
}

variable "drg_route_distribution_distribution_type" {
  type        = string
  description = "Distribution type for the DRG route distribution."
  #Possible values: IMPORT, EXPORT
}

variable "drg_route_distribution_display_name" {
  type        = string
  description = "Display name for the DRG route distribution."
}

variable "drg_route_distribution_statement_statements_action" {
  type        = string
  description = "Action to be performed by the DRG route distribution statement"
  #Possible values: ACCEPT, REJECT, ALLOW, DENY
}

variable "drg_route_distribution_statement_statements_match_criteria_match_type" {
  type        = string
  description = "Match type for the DRG route distribution statement's match criteria"
  #Possible values: DRG_ATTACHMENT_ID, DRG_ATTACHMENT_TYPE, MATCH_ALL
}

variable "drg_route_distribution_statement_statements_match_criteria_attachment_type" {
  type        = string
  description = "Attachment type for the DRG route distribution statement's match criteria."
  #Possible values: VCN, DRG, DRG_ATTACHMENT, CPE
}

variable "drg_route_distribution_statement_statements_priority" {
  type        = number
  description = "Priority for the DRG route distribution statement."
  default = "1"
}

# -----------------------------------------------------------------------------
# 			Gateway Variables for HUB VCN
# -----------------------------------------------------------------------------

variable "hub_internet_gateway_enabled" {
  type        = bool
  description = "Should IG be enabled in HUB VCN? True/False"
  default     = "true"
}

variable "hub_internet_gateway_display_name" {
  type        = string
  description = "Name of Internet Gateway connected to HUB VCN"
}

variable "hub_nat_gateway_display_name" {
  type        = string
  description = "Name of NAT Gateway connected to HUB VCN"
}

variable "hub_service_gateway_display_name" {
  type        = string
  description = "Name of Service Gateway connected to HUB VCN"
}

# -----------------------------------------------------------------------------
# 			Route Tables Variables for HUB VCN
# -----------------------------------------------------------------------------

variable "hub_mgmt_route_table_display_name" {
  type        = string
  description = "Route table name for Management subnet"
}

variable "hub_trt_route_table_display_name" {
  type        = string
  description = "Route table name for Trusted subnet"
}

variable "hub_untrt_route_table_display_name" {
  type        = string
  description = "Route table name for Un-Trusted subnet"
}

# -----------------------------------------------------------------------------
#			 Management Subnet Variables for HUB VCN
# -----------------------------------------------------------------------------

variable "hub_mgmt_subnet_cidr_block" {
  type        = string
  description = "CIDR values for Management Subnet in HUB VCN"
}

variable "hub_mgmt_subnet_display_name" {
  type        = string
  description = "The Name of your Management Subnet in HUB VCN"
}

variable "hub_mgmt_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "True/False based on private/public subnet respectively for management subnet"
  default     = "true"
}

variable "hub_mgmt_security_list_display_name" {
  type        = string
  description = "The Name of security list of Management Subnet in HUB VCN"
}

# -----------------------------------------------------------------------------
#			 Trusted Subnet Variables for HUB VCN
# -----------------------------------------------------------------------------


variable "hub_trt_subnet_cidr_block" {
  type        = string
  description = "CIDR values for Trusted Subnet in HUB VCN"
}

variable "hub_trt_subnet_display_name" {
  type        = string
  description = "The Name of your Trusted Subnet in HUB VCN"
}

variable "hub_trt_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "True/False based on private/public subnet respectively for Trusted subnet"
  default     = "true"
}

variable "hub_trt_security_list_display_name" {
  type        = string
  description = "The Name of security list of Trusted Subnet in HUB VCN"
}

# -----------------------------------------------------------------------------
# Un-Trusted Subnet Variables for HUB VCN
# -----------------------------------------------------------------------------

variable "hub_untrt_subnet_cidr_block" {
  type        = string
  description = "CIDR values for Un-Trusted Subnet in HUB VCN"
}

variable "hub_untrt_subnet_display_name" {
  type        = string
  description = "The Name of your Un-Trusted Subnet in HUB VCN"
}

variable "hub_untrt_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "True/False based on private/public subnet respectively for Un-Trusted subnet"
  default     = "true"
}

variable "hub_untrt_security_list_display_name" {
  type        = string
  description = "The Name of security list of Un-Trusted Subnet in HUB VCN"
}

# -----------------------------------------------------------------------------
# 			Route Tables Variables for PROD VCN
# -----------------------------------------------------------------------------

variable "prod_db_route_table_display_name" {
  type        = string
  description = "Route table name for DB subnet"
}

variable "prod_app_route_table_display_name" {
  type        = string
  description = "Route table name for App subnet"
}

variable "prod_pvt_lb_route_table_display_name" {
  type        = string
  description = "Route table name for Private LB subnet"
}

variable "prod_pub_lb_route_table_display_name" {
  type        = string
  description = "Route table name for Public LB subnet"
}

variable "prod_exa_route_table_display_name" {
  type        = string
  description = "Route table name for Exadata subnet"
}

variable "prod_dmz_route_table_display_name" {
  type        = string
  description = "Route table name for DMZ subnet"
}


# -----------------------------------------------------------------------------
#			 Gateway Variables for Prod VCN
# -----------------------------------------------------------------------------

variable "prod_internet_gateway_enabled" {
  type        = bool
  description = "Should IG be enabled in Prod VCN? True/False"
}

variable "prod_internet_gateway_display_name" {
  type        = string
  description = "Name of Internet Gateway connected to Prod VCN"
}

variable "prod_nat_gateway_display_name" {
  type        = string
  description = "Should NAT be enabled in Prod VCN? True/False"
}

variable "prod_service_gateway_display_name" {
  type        = string
  description = "Should SG be enabled in Prod VCN? True/False"
}
