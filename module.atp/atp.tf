resource "oci_database_autonomous_database" "atpdatabase" {
  admin_password           = var.atp_password
  compartment_id           = oci_identity_compartment.jonasOCIPFCompartment.id
  cpu_core_count           = var.atpdatabase_cpu_core_count
  data_storage_size_in_tbs = var.atpdatabase_data_storage_size_in_tbs
  db_name                  = var.atpdatabase_db_name
  display_name             = var.atpdatabase_display_name
  freeform_tags            = var.atpdatabase_freeform_tags
  license_model            = var.atpdatabase_license_model
  db_version               = var.atpdatabase_db_version
  is_data_guard_enabled    = false
  is_free_tier             = true
}

data "oci_database_autonomous_databases" "atpdatabases" {
  compartment_id = oci_identity_compartment.jonasOCIPFCompartment.id
  display_name = var.atpdatabase_display_name
}

