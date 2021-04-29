variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}
variable "compartment_ocid_projetofinal" {}
variable "atp_password" {}

variable "wallet_zip_file" {
  default = "wallet_tcb/wallet.zip"
}

variable "atpdatabase_cpu_core_count" {
  default = 1
}

variable "atpdatabase_data_storage_size_in_tbs" {
  default = 1
}

variable "atpdatabase_db_name" {
  default = "dbrh"
}

variable "atpdatabase_defined_tags_value" {
  default = "value"
}

variable "atpdatabase_display_name" {
  default = "jonasOCIPFATP"
}

variable "atpdatabase_freeform_tags" {
  default = {
    "Owner" = "jonasOCIPF"
  }
}

variable "atpdatabase_license_model" {
  default = "LICENSE_INCLUDED"
}

variable "atpdatabase_db_version" {
  default = "19c"
}


## Variables azure

variable "resource_group_name"        { default = "rgtcb" }
variable "resource_group_location"    { default = "eastus2" }
variable "app_service_plan_name"      { default = "asp-tcbjonas-gestaorh" }
variable "app_service_name"           { default = "tcbjonas-gestaorh" }