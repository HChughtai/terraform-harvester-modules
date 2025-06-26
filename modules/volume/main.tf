resource "harvester_volume" "volume" {
  name      = var.name
  namespace = var.namespace
  size      = var.size

  storage_class_name = var.storage_class
  access_mode        = var.access_mode

  tags = var.tags
}
