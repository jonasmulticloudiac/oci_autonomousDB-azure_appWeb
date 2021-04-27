resource "oci_identity_compartment" "jonasOCIPFCompartment" {
  name = "jonasOCIPF_tcbCompartment"
  description = "jonasOCIPF Compartment"
  compartment_id = var.compartment_ocid_projetofinal
}
