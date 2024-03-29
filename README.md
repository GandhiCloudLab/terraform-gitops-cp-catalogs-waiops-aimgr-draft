# IBM Cloud Pak for Watson AIOps Operator Catalog module

Module to populate a gitops repository with the resources needed to install the operator catalogs required to install IBM Cloud Pak for Watson AIOps components such as AI-Manager, Event Manager and Infra Automation. 

**Note:** One of the required variable for this module is an IBM Entitlement Key which provides access to the container registry. This value can be retrieved from - https://myibm.ibm.com/products-services/containerlibrary

## Software dependencies

The module depends on the following software components:

### Command-line tools

- terraform >= v0.15
- kubectl

### Terraform providers

None

## Module dependencies

This module makes use of the output from other modules:

- GitOps 
    - github.com/cloud-native-toolkit/terraform-tools-gitops.git
- ArgoCD Bootstrap 
    - github.com/cloud-native-toolkit/terraform-tools-argocd-bootstrap.git
    - github.com/cloud-native-toolkit/terraform-vsi-argocd-bootstrap.git

## Example usage

```hcl-terraform
module "gitops_cp_catalogs_waiops" {
  
  source = "github.com/cloud-native-toolkit/terraform-gitops-cp-catalogs-waiops"

}
```