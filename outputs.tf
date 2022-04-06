output "catalog_ibmoperators_waiops_aimgr" {
  description = "IBM Operator Catalog name AI Manager"
  value       = "ibm-operator-catalog"
  depends_on = [null_resource.setup_gitops]
}

output "catalog_ibmoperators_waiops_eventmgr" {
  description = "IBM Operator Catalog name Event Manager"
  value       = "noi-operator-catalog"
  depends_on = [null_resource.setup_gitops]
}

output "entitlement_key" {
  description = "Entitlement key"
  value       = var.entitlement_key
  depends_on  = [null_resource.setup_gitops]
}
