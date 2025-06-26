variable "name" {
  type        = string
  description = "Name of the volume"
}

variable "namespace" {
  type        = string
  description = "Kubernetes namespace for the volume"
}

variable "size" {
  type        = string
  description = "Size of the volume (e.g., '100Gi')"
}

variable "storage_class" {
  type        = string
  description = "Storage class for the volume"
  default     = "longhorn"
}

variable "access_mode" {
  type        = string
  description = "Access mode for the volume"
  default     = "ReadWriteOnce"
  validation {
    condition = contains([
      "ReadWriteOnce",
      "ReadOnlyMany",
      "ReadWriteMany"
    ], var.access_mode)
    error_message = "Access mode must be one of: ReadWriteOnce, ReadOnlyMany, ReadWriteMany."
  }
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the volume"
  default     = {}
}
