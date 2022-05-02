module "test" {
  source = "../.."

  module_enabled = false

  # add all required arguments

  display_name = "unit-complete-${local.random_suffix}"
  parent       = "organization/${local.org_id}"

  # add all optional arguments that create additional/extended resources
}
