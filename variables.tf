# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED VARIABLES
# These variables must be set when using the identity group module.
# ---------------------------------------------------------------------------------------------------------------------

variable "display_name" {
  type        = string
  description = "(Required) The folder’s display name. A folder’s display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters."

  validation {
    condition     = length(var.display_name) <= 30
    error_message = "The 'display_name' can't be longer than 30 characters."
  }
}

variable "parent" {
  type        = string
  description = "(Required) The resource name of the parent Folder or Organization. Must be of the form folders/{folder_id} or organizations/{org_id}."
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL VARIABLES
# These variables have defaults, but may be overridden.
# ---------------------------------------------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
# MODULE CONFIGURATION PARAMETERS
# These variables are used to configure the module.
# See https://medium.com/mineiros/the-ultimate-guide-on-how-to-write-terraform-modules-part-1-81f86d31f024
# ------------------------------------------------------------------------------

variable "module_enabled" {
  type        = bool
  description = "(Optional) Whether to create resources within the module or not. Default is 'true'."
  default     = true
}

variable "module_depends_on" {
  type        = list(any)
  description = "(Optional) A list of external resources the module depends_on. Default is '[]'."
  default     = []
}
