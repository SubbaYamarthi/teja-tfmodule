module "resource_group" {
  source      = "./ResourceGroup"
  rg_name     = var.rg_name
  rg_location = var.rg_location
}

module "storage_account" {
  source              = "./Storageaccounts.tf"
  sa_name             = var.sa_name
  sa_location         = module.resource_group.rg_location
  rg_name             = module.resource_group.rg_name
  sa_account_tier     = var.sa_account_tier
  sa_replication_type = var.sa_replication_type
}
