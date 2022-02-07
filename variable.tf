variable "resource_group_name" {
  description = "Resource group name to allocate virtual network"
  type        = string
}

variable "environment" {
  description = "Project environment"
  type        = string
  default     = ""
}

variable "module" {
  description = "Project module name"
  type        = string
  default     = ""
}

variable "slot" {
  description = "Project slot name. Available values: shared, blue, green"
  type        = string
  default     = ""
}

variable "vnet_cidr" {
  description = "The address space that is used by the virtual network"
  type        = list(string)
}

variable "custom_tags" {
  description = "Custom tags to add"
  type        = map(string)
  default     = {}
}
