# ------------------------------------------------------------------------------
# OUTPUT CALCULATED VARIABLES (prefer full objects)
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# OUTPUT ALL RESOURCES AS FULL OBJECTS
# ------------------------------------------------------------------------------
output "google_folder" {
  description = "The outputs of the create google folder"
  value       = try(google_folder.folder[0], {})
}

output "iam" {
  description = "The resources created by `mineiros-io/folder-iam/google` module."
  value       = module.iam
}
