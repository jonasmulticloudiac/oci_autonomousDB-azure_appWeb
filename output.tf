output "Wallet_Password" {
  value = module.atp.wp
}

output "Admin_password" {
   value = module.atp.adminpass
}

output "Databases_ATP" {
  value = module.atp.databases
}

output "Connection_String" {
  value = module.atp.connection
}
