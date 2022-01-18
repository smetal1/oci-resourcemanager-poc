resource "oci_identity_compartment" "compartment1" {
  name           = "tf-example-compartment"
  description    = "compartment created by terraform"
  compartment_id = var.tenancy_ocid
  enable_delete  = false 
}

data "oci_identity_compartments" "compartments1" {
  compartment_id = oci_identity_compartment.compartment1.compartment_id

}

output "compartments" {
  value = data.oci_identity_compartments.compartments1.compartments
}
