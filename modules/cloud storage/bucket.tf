resource "google_storage_bucket" "storagebucket" {
  name                        = var.bucket_name
  location                    = var.location
  storage_class               = var.storage_class
  force_destroy               = var.force_destroy
  public_access_prevention    = var.public_access_prevention
  uniform_bucket_level_access = var.uniform_bucket_level_access
  project                     = var.project_id
  versioning {
    enabled = var.versioning
  }


}
resource "google_storage_bucket_acl" "image-store-acl" {
  bucket = google_storage_bucket.storagebucket.name

  role_entity = [
    "READER:user-${var.role_entity_id}",
  ]
}


