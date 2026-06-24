variable "group" {
  type        = string
  description = "The name of the group to create (will create {group}_user and {group}_admin)"
}
variable "description_prefix" {
  type        = string
  description = "Description for the resource group"
  default     = "Resource group for Okta group :"
}

variable "gateway_selector" {
  type        = string
  description = "Gateway selector for the resource group project"
  default     = "environment=staging"
}

variable "additional_label_selectors" {
  type        = map(string)
  description = "Additional label selectors for the security policy"
  default     = {
    "system.os_type" = "linux"
  }
}

variable "group_discriminator_name" {
  type        = string
  description = "The name of the group discriminator to use for the security policy"
  default     = "sftd.tx.group"
}