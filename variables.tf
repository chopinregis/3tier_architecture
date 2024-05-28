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


variable "db_admin_username" {
  type        = string
  description = "The username for the administrator of the database accouunt"
}

variable "db_admin_password" {
  type       = string
  description = "The password for the administrator of the databse accouutn"
}

variable "administrator_login_password" {
  description = "The password for the database administrator"
  type        = string
  // You can add a default value or keep it without a default so it must be provided
}

variable "administrator_login" {
  description = "The login name for the database administrator"
  type        = string
  // You can add a default value or keep it without a default so it must be provided
}
