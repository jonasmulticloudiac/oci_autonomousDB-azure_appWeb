module "atp" {
  
  source = "./module.atp"

  atpdatabase_db_version                =  var.atpdatabase_db_version
  atpdatabase_cpu_core_count            =  var.atpdatabase_cpu_core_count
  atpdatabase_data_storage_size_in_tbs  =  var.atpdatabase_data_storage_size_in_tbs
  atpdatabase_db_name                   =  var.atpdatabase_db_name
  atpdatabase_defined_tags_value        =  var.atpdatabase_defined_tags_value
  atpdatabase_display_name              =  var.atpdatabase_display_name
  atpdatabase_freeform_tags             =  var.atpdatabase_freeform_tags
  atpdatabase_license_model             =  var.atpdatabase_license_model
  compartment_ocid_projetofinal         =  var.compartment_ocid_projetofinal
  atp_password                          =  var.atp_password
  wallet_zip_file                       =  var.wallet_zip_file

}

/*
module "azure-cloud" {
 
  source = "./module.azure"

  resource_group_location      = var.resource_group_location
  resource_group_name          =  var.resource_group_name
  app_service_plan_name        = var.app_service_plan_name
  app_service_name             = var.app_service_name

}
*/