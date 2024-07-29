variable "client_id" {}
variable "client_secret" {}
variable "databricks_account_id" {}

variable "tags" {
  default = {}
}

variable "existing_vpc_id" {}

variable "existing_nat_gateway_id" {}

variable "private_subnet_pair" {}

variable "region" {
  default = "eu-central-1"
}

locals {
  prefix = "databricks"
}