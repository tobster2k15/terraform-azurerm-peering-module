variable "spoke_rg_name"{
    type        = string
    description = "The name of the resource group"
    default     = null
}

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

variable "allow_virtual_network_access" {
  type        = bool
  description = "Allow virtual network access"
  default     = true
}

variable "allow_forwarded_traffic" {
  type        = bool
  description = "Allow forwarded traffic"
  default     = true
}

variable "allow_gateway_transit" {
  type        = bool
  description = "Allow gateway transit"
  default     = false
}

variable "use_remote_gateways" {
  type        = bool
  description = "Use remote gateways"
  default     = false
}

variable "spoke_vnet_name" {
  type        = string
  description = "The name of the spoke vnet"
  default     = null
}

variable "spoke_vnet_id" {
    type        = string
    description = "The id of the spoke vnet"
    default     = null
}