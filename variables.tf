variable "spoke_to_hub" {
  type        = string
  default     = "spoke_to_hub"
  description = "Name of the peering connection"
}

variable "hub_to_spoke" {
  type        = string
  default     = "hub_to_spoke"
  description = "Name of the peering connection"
}

variable "hub_vnet_id" {
  type        = string
  description = "The id of the hub vnet"
  default     = null
}

variable "hub_vnet_rg"{
  type        = string
  description = "The resource group of the hub vnet"
  default     = null
}
