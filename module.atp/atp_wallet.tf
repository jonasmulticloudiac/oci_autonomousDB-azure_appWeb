resource "random_string" "wallet_password" {
  length  = 16
  special = true
}

resource "oci_database_autonomous_database_wallet" "atpdatabase_wallet" {
  autonomous_database_id = oci_database_autonomous_database.atpdatabase.id
  password               = random_string.wallet_password.result
}

resource "local_file" "jonasOCIPF_ATP_database_wallet_file" {
  content  = oci_database_autonomous_database_wallet.atpdatabase_wallet.content
  filename = "wallet_tcb/jonasOCIPF_atp_wallet.zip"
}

