module "gitops-bootstrap" {

  ### ADDED for Local Run ### 
  # source = "github.com/cloud-native-toolkit/terraform-util-gitops-bootstrap.git"
  source = "github.com/cloud-native-toolkit/terraform-tools-argocd-bootstrap.git?ref=v1.6.4" 

  cluster_config_file = module.dev_cluster.config_file_path
  gitops_repo_url     = module.gitops.config_repo_url
  git_username        = module.gitops.config_username
  git_token           = module.gitops.config_token
  bootstrap_path      = module.gitops.bootstrap_path
  sealed_secret_cert  = module.cert.cert
  sealed_secret_private_key = module.cert.private_key
  prefix              = var.bootstrap_prefix
  kubeseal_namespace  = var.kubeseal_namespace
  create_webhook      = true

  ### ADDED for Local Run ### 
  cluster_type = module.dev_cluster.platform.type_code
  ingress_subdomain = module.dev_cluster.platform.ingress
  olm_namespace = module.olm.olm_namespace
  operator_namespace = module.olm.target_namespace
  bootstrap_prefix = var.bootstrap_prefix
}



