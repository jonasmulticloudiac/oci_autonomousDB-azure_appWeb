# resource "random_string" "wallet_password" {
#   length  = 16
#   special = true
# }

resource  "oci_database_autonomous_database_wallet" "atp_wallet" {
  autonomous_database_id = oci_database_autonomous_database.atpdatabase.id
  password               =  var.atp_password
  base64_encode_content  = "true"
}

resource "local_file" "wallet_file" {
  content_base64  = oci_database_autonomous_database_wallet.atp_wallet.content
  filename = var.wallet_zip_file
}

