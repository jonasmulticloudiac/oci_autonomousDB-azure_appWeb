output "wp" {
  value = [random_string.wallet_password.result]
}

output "adminpass" {
   value = var.atp_password
}

output "databases" {
  value = data.oci_database_autonomous_databases.atpdatabases.autonomous_databases
}

output "connection" {
  value = [lookup(oci_database_autonomous_database.atpdatabase.connection_strings.0.all_connection_strings, "PARALLEL", "Unavailable")]
}
