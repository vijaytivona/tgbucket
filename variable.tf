variable "create_bucket" {
  type = bool
}



#GCS

variable "location" {
  type = string
}

variable "bucket_name" {
  type = string
}

variable "storage_class" {
  type = string
}

variable "force_destroy" {
  type    = bool
  default = true
}
variable "public_access_prevention" {
  type = string
}
variable "uniform_bucket_level_access" {
  type    = bool
  default = false
}

variable "versioning" {
  type = string
}

variable "role_entity_id" {
  type = string
}

variable "project_id"{
  type = string
  default = "base-gcp-427505" 
}  