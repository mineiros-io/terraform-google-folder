resource "google_folder" "folder" {
  count = var.module_enabled ? 1 : 0

  depends_on = [var.module_depends_on]

  display_name = var.display_name
  parent       = var.parent
}
