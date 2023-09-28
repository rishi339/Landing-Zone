# -----------------------------------------------------------------------------
#                           NON PROD Compartment Variables
# -----------------------------------------------------------------------------

variable "non_prod_environment_compartment_name" {
  type        = string
  description = "Non Production Compartment Name"
}

variable "non_prod_network_compartment_name" {
  type        = string
  description = "Non Prod Network Compartment Name"
}

variable "non_prod_security_compartment_name" {
  type        = string
  description = "Non Prod Security Compartment Name"
}

variable "non_prod_application_compartment_name" {
  type        = string
  description = "Non Prod Application Compartment Name"
}

variable "non_prod_database_compartment_name" {
  type        = string
  description = "Non Prod Database Compartment Name"
}


# -----------------------------------------------------------------------------
# 				NON PROD VCN Variables
# -----------------------------------------------------------------------------

variable "non_prod_vcn_cidr_blocks" {
  type        = list(string)
  description = "The CIDR value of your Non Prod VCN"
}

variable "non_prod_vcn_display_name" {
  type        = string
  description = "The Name of your Non Prod VCN"
}

# -----------------------------------------------------------------------------
#			 Application Subnet Variables for NON PROD VCN
# -----------------------------------------------------------------------------

variable "non_prod_app_subnet_cidr_block" {
  type        = string
  description = "CIDR values for Application Subnet in Non Prod VCN"
}

variable "non_prod_app_subnet_display_name" {
  type        = string
  description = "The Name of your App Subnet in Non Prod VCN"
}

variable "non_prod_app_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "True/False based on private/public subnet respectively for Non Prod App subnet"
  default     = "true"
}

variable "non_prod_app_security_list_display_name" {
  type        = string
  description = "The Name of security list of App Subnet in Non Prod VCN"
}

# -----------------------------------------------------------------------------
# 			Database Subnet Variables for NON PROD VCN
# -----------------------------------------------------------------------------

variable "non_prod_db_subnet_cidr_block" {
  type        = string
  description = "CIDR values for Database Subnet in Non Prod VCN"
}

variable "non_prod_db_subnet_display_name" {
  type        = string
  description = "The Name of your Database Subnet in Non Prod VCN"
}

variable "non_prod_db_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "True/False based on private/public subnet respectively for Database subnet"
  default     = "true"
}

variable "non_prod_db_security_list_display_name" {
  type        = string
  description = "The Name of security list of Database Subnet in Non Prod VCN"
}

# -----------------------------------------------------------------------------
# 		Public Load Balancer Subnet Variables for NON PROD VCN
# -----------------------------------------------------------------------------

variable "non_prod_pub_lb_subnet_cidr_block" {
  type        = string
  description = "CIDR values for Public LB Subnet in Non Prod VCN"
}

variable "non_prod_pub_lb_subnet_display_name" {
  type        = string
  description = "The Name of your Public LB Subnet in Non Prod VCN"
}

variable "non_prod_pub_lb_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "True/False based on private/public subnet respectively for Public LB subnet"
  default     = "false"
}

variable "non_prod_pub_lb_security_list_display_name" {
  type        = string
  description = "The Name of security list of Public LB Subnet in Non Prod VCN"
}

# -----------------------------------------------------------------------------
#	 Private Load Balancer Subnet Variables for NON PROD VCN
# -----------------------------------------------------------------------------

variable "non_prod_pvt_lb_subnet_cidr_block" {
  type        = string
  description = "CIDR values for Private LB Subnet in Non Prod VCN"
}

variable "non_prod_pvt_lb_subnet_display_name" {
  type        = string
  description = "The Name of your Private LB Subnet in Non Prod VCN"
}

variable "non_prod_pvt_lb_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "True/False based on private/public subnet respectively for Private LB subnet"
  default     = "true"
}

variable "non_prod_pvt_lb_security_list_display_name" {
  type        = string
  description = "The Name of security list of Private LB Subnet in Non Prod VCN"
}

# -----------------------------------------------------------------------------
# 			DMZ Subnet Variables for NON PROD VCN
# -----------------------------------------------------------------------------

variable "non_prod_dmz_subnet_cidr_block" {
  type        = string
  description = "CIDR values for DMZ Subnet in Non Prod VCN"
}

variable "non_prod_dmz_subnet_display_name" {
  type        = string
  description = "The Name of your DMZ Subnet in Non Prod VCN"
}

variable "non_prod_dmz_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "True/False based on private/public subnet respectively for DMZ subnet"
  default     = "true"
}

variable "non_prod_dmz_security_list_display_name" {
  type        = string
  description = "The Name of security list of DMZ Subnet in Non Prod VCN"
}

# -----------------------------------------------------------------------------
# 		EXA Subnet Variables for NON PROD VCN
# -----------------------------------------------------------------------------

variable "non_prod_exa_subnet_cidr_block" {
  type        = string
  description = "CIDR values for Exadata Subnet in Non Prod VCN"
}

variable "non_prod_exa_subnet_display_name" {
  type        = string
  description = "The Name of your Exadata Subnet in Non Prod VCN"
}

variable "non_prod_exa_subnet_prohibit_public_ip_on_vnic" {
  type        = bool
  description = "True/False based on private/public subnet respectively for Exadata subnet"
  default     = "true"
}

variable "non_prod_exa_security_list_display_name" {
  type        = string
  description = "The Name of security list of App Subnet in Non Prod VCN"
}

# -----------------------------------------------------------------------------
# 		Route Tables Variables for NON PROD VCN
# -----------------------------------------------------------------------------

variable "non_prod_db_route_table_display_name" {
  type        = string
  description = "Route table name for DB subnet"
}

variable "non_prod_app_route_table_display_name" {
  type        = string
  description = "Route table name for App subnet"
}

variable "non_prod_pvt_lb_route_table_display_name" {
  type        = string
  description = "Route table name for Private LB subnet"
}

variable "non_prod_pub_lb_route_table_display_name" {
  type        = string
  description = "Route table name for Public LB subnet"
}

variable "non_prod_exa_route_table_display_name" {
  type        = string
  description = "Route table name for Exadata subnet"
}

variable "non_prod_dmz_route_table_display_name" {
  type        = string
  description = "Route table name for DMZ subnet"
}


# -----------------------------------------------------------------------------
# 			Gateway Variables for NON Prod VCN
# -----------------------------------------------------------------------------

variable "non_prod_internet_gateway_enabled" {
  type        = bool
  description = "Should IG be enabled in Non-Prod VCN? True/False"
  default     = "false"
}

variable "non_prod_internet_gateway_display_name" {
  type        = string
  description = "Name of Internet Gateway connected to Non-Prod VCN"
}

variable "non_prod_nat_gateway_display_name" {
  type        = string
  description = "Name of NAT Gateway connected to Non-Prod VCN"
}

variable "non_prod_service_gateway_display_name" {
  type        = string
  description = "Should SG be enabled in Non-Prod VCN? True/False"
}

# -----------------------------------------------------------------------------
#                             NON PROD DRG Variables
# -----------------------------------------------------------------------------

variable "np_drg_display_name" {
  type        = string
  description = "The Name of your DRG for Non Production"
}

variable "non_prod_drg_attachment_display_name" {
  type        = string
  description = "The name of DRG Attachment for Non Production"
}

variable "np_drg_attachment_network_details_type" {
  type        = string
  description = "The type can be one of these values: IPSEC_TUNNEL, REMOTE_PEERING_CONNECTION, VCN, VIRTUAL_CIRCUIT"
}

variable "np_drg_route_distribution_distribution_type" {
  type        = string
  description = "Distribution type for the DRG route distribution."
  #Possible values: IMPORT, EXPORT
}

variable "np_drg_route_distribution_display_name" {
  type        = string
  description = "Display name for the DRG route distribution."
}

variable "np_drg_route_distribution_statement_statements_action" {
  type        = string
  description = "Action to be performed by the DRG route distribution statement"
  #Possible values: ACCEPT, REJECT, ALLOW, DENY
}

variable "np_drg_route_distribution_statement_statements_match_criteria_match_type" {
  type        = string
  description = "Match type for the DRG route distribution statement's match criteria"
  #Possible values: DRG_ATTACHMENT_ID, DRG_ATTACHMENT_TYPE, MATCH_ALL
}

variable "np_drg_route_distribution_statement_statements_match_criteria_attachment_type" {
  type        = string
  description = "Attachment type for the DRG route distribution statement's match criteria."
  #Possible values: VCN, DRG, DRG_ATTACHMENT, CPE
}

variable "np_drg_route_distribution_statement_statements_priority" {
  type        = number
  description = "Priority for the DRG route distribution statement."
}

