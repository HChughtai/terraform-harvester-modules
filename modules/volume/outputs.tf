output "id" {
  description = "ID of the volume"
  value       = harvester_volume.volume.id
}

output "name" {
  description = "Name of the volume"
  value       = harvester_volume.volume.name
}

output "namespace" {
  description = "Namespace of the volume"
  value       = harvester_volume.volume.namespace
}

output "size" {
  description = "Size of the volume"
  value       = harvester_volume.volume.size
}

output "access_mode" {
  description = "Access modes of the volume"
  value       = harvester_volume.volume.access_mode
}

output "storage_class" {
  description = "Storage class of the volume"
  value       = harvester_volume.volume.storage_class_name
}
