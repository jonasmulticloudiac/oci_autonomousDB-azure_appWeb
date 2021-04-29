terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "oci-azure-projetofinal"

    workspaces {
        
      name = "ociazure"
    }
  }
}