variable "subscription_id" {
  type        = string
  description = "The Subscription ID used for Azure resources"
}

variable "client_id" {
  type        = string
  description = "The Client ID for the Azure service principal"
}

variable "client_secret" {
  type        = string
  description = "The Client Secret for the Azure service principal"
}

variable "tenant_id" {
  type        = string
  description = "The Tenant ID for the Azure service principal"
}

//
//
variable "admin_password" {
  description = "The admin password"
  type        = string
  // Add a default value or leave it without to require a value be provided
  sensitive   = true
}

variable "admin_username" {
  description = "The admin username"
  type        = string
  // Add a default value or leave it without to require a value be provided
}

variable "db_admin_username" {
  type        = string
  description = "The username for the administrator of the database accouunt"
}

variable "db_admin_password" {
  type       = string
  description = "The password for the administrator of the databse accouutn"
  sensitive   = true
}

variable "administrator_login_password" {
  description = "The password for the database administrator"
  type        = string
  // You can add a default value or keep it without a default so it must be provided
  sensitive   = true
}

variable "administrator_login" {
  description = "The login name for the database administrator"
  type        = string
  // You can add a default value or keep it without a default so it must be provided
}

//
//

variable "vnet_name" {
  type        = string
  description = "Name for the virtual network."
  default     = "myVNet"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the virtual network."
  default     = ["10.0.0.0/16"]
}

variable "subnet_names" {
  type        = map(string)
  description = "Names of the subnets."
  default     = {
    web = "web-subnet"
    app = "app-subnet"
    db  = "db-subnet"
  }
}

variable "subnet_prefixes" {
  type        = map(string)
  description = "CIDR prefixes for each subnet."
  default     = {
    web = "10.0.1.0/24"
    app = "10.0.2.0/24"
    db  = "10.0.3.0/24"
  }
}

variable "nsg_names" {
  type        = map(string)
  description = "Names of the network security groups."
  default     = {
    web = "web-nsg"
    app = "app-nsg"
    db  = "db-nsg"
  }
}
