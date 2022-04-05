
 resource null_resource write_outputs {
   provisioner "local-exec" {
     command = "echo \"$${OUTPUT}\" > gitops-output.json"

     environment = {
       OUTPUT = jsonencode({
         name        = module.ibm-cp-catalogs-waiops-aimgr.name
         branch      = module.ibm-cp-catalogs-waiops-aimgr.branch
         layer       = module.ibm-cp-catalogs-waiops-aimgr.layer
         layer_dir   = module.ibm-cp-catalogs-waiops-aimgr.layer == "infrastructure" ? "1-infrastructure" : (module.cp4s.layer == "services" ? "2-services" : "3-applications")
         type        = module.ibm-cp-catalogs-waiops-aimgr.type
       })
     }
   }
}