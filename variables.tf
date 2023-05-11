variable "root_id" {
  type    = string
  default = "demo"
}

variable "root_name" {
  type    = string
  default = "Demo ELZ"
}

# Deploy Connectivity Resources With Custom Settings

variable "deploy_connectivity_resources" {
  type    = bool
  default = true
}

/*variable "log_retention_in_days" {
  type    = number
  default = 50
}

variable "security_alerts_email_address" {
  type    = string
  default = "my_valid_security_contact@replace_me" # Replace this value with your own email address.
}*/

variable "connectivity_resources_location" {
  type    = string
  default = "northeurope"
}

variable "connectivity_resources_tags" {
  type = map(string)
  default = {
    demo_type = "deploy_connectivity_resources_custom"
  }
}

# Deploy Identity Resources With Custom Settings

variable "deploy_corp_landing_zones" {
  type    = bool
  default = false
}

variable "deploy_online_landing_zones" {
  type    = bool
  default = false
}


variable "deploy_identity_resources" {
  type    = bool
  default = false
}

# Deploy MAnagement Resources With Custom Settings


variable "deploy_management_resources" {
  type    = bool
  default = false
}

variable "log_retention_in_days" {
  type    = number
  default = 30
}

variable "security_alerts_email_address" {
  type    = string
  default = "validemail@email.com" # Replace this value with your own email address.
}

variable "management_resources_location" {
  type    = string
  default = "northeurope"
}

variable "management_resources_tags" {
  type = map(string)
  default = {
    demo_type = "deploy_management_resources_custom"
  }
}