module "dev_cluster" {
  source = "github.com/cloud-native-toolkit/terraform-ocp-login.git"

  server_url = var.server_url
  login_user = "apikey"
  login_password = var.ibmcloud_api_key

  ### ADDED for Local Run ### 
  # login_token = ""
  login_token = var.login_token
  
}

resource null_resource output_kubeconfig {
  provisioner "local-exec" {
    command = "echo '${module.dev_cluster.platform.kubeconfig}' > .kubeconfig"
  }
}
