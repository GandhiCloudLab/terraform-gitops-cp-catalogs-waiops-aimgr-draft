
 resource null_resource write_outputs {
   provisioner "local-exec" {
     command = "echo \"$${OUTPUT}\" > gitops-output.json"

     environment = {
       OUTPUT = jsonencode({
         catalog_ibmoperators-waiops-aimgr    = module.gitops_cp_catalogs_waiops.catalog_ibmoperators_waiops_aimgr
         catalog_ibmoperators-waiops-eventmgr = module.gitops_cp_catalogs_waiops.catalog_ibmoperators_waiops_eventmgr
       })
     }
   }
}