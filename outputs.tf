output "catalog_ibmoperators-aimgr" {
  description = "IBM Operator Catalog name"
  value       = "ibm-operator-catalog"
  depends_on = [null_resource.setup_gitops]
}

output "entitlement_key" {
  description = "Entitlement key"
  value       = var.entitlement_key
  depends_on  = [null_resource.setup_gitops]
}
