module "google_storage_bucket" {
  count                    = var.create_bucket ? 1 : 0
  source                   = "./modules/cloud storage"
  location                 = var.location
  bucket_name              = var.bucket_name
  storage_class            = var.storage_class
  public_access_prevention = var.public_access_prevention
  versioning               = var.versioning
  role_entity_id           = var.role_entity_id
  project_id               = var.project_id
}


